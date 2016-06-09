<?php

$sqlStatement = 'SELECT
    healthy_connection.healthy_connection.id,
    healthy_connection.healthy_connection.summary,
	article.title,
	health_concern.name AS health_concern,
    lifestyle_factor.name AS lifestyle_factor,
    catb.name AS lifestyle_category,
    cata.name AS health_category,
    article.date_published,
    article.url,
    impact.type,
    CONCAT(lifestyle_factor.name,
            \' has a \',
            impact.type,
            \' impact on \',
			health_concern.name) strapline
FROM
    health_concern
        JOIN
    healthy_connection ON healthy_connection.health_concern_id = health_concern.id
		JOIN
	article ON article.id=healthy_connection.article_id
		JOIN
    impact ON impact.id = healthy_connection.impact_id
		JOIN
    lifestyle_factor ON healthy_connection.lifestyle_factor_id = lifestyle_factor.id
        JOIN
    category catb ON lifestyle_factor.category_id = catb.id
		JOIN
    category cata ON health_concern.category_id = cata.id
WHERE
     health_concern.name SOUNDS LIKE \'%' . $searchTerm . '%\'
 	OR lifestyle_factor.name SOUNDS LIKE \'%' . $searchTerm . '%\'
	OR catb.name SOUNDS LIKE \'%' . $searchTerm . '%\'
	OR cata.name SOUNDS LIKE \'%' . $searchTerm . '%\'
        ';

function setFilterStatement($healthConcern = [], $lifestyleFactor = [], $filters = [])
{

    // validation:
    if (!is_array($healthConcern) || !is_array($lifestyleFactor) || !is_array($filters)) {
        return;
    }

    //declare variables
    $filterString = '';
    $andOption = [];
    $orderOption = [];

    //check for filters
    foreach ($filters as $filter) {
        switch ($filter) {
            case 'good':
                $andOption[] = 'good';
                break;
            case 'bad':
                $andOption[] = 'bad';
                break;
            case 'neutral':
                $andOption[] = 'nothing';
                break;
            case 'date':
                $orderOption[] = 'article.date_published';
                break;
            case 'popular':
                $orderOption[] = 'health_concern.number_of_searches, lifestyle_factor.number_of_searches';
                break;
        }
    }

    if (empty($orderOption)) {
        $orderOption[] = 'article.date_published';
    }

    if (!empty($healthConcern) || !empty($lifestyleFactor) || !empty($filters)) {
        $filterString .= ' AND ';
    }

    $andOr = 0;
    foreach ($healthConcern as $searchString) {
        $filterString .= $andOr ? ' OR ' : '';
        $filterString .= 'health_concern.name SOUNDS LIKE \'%' . $searchString . '%\'
    OR LOWER(health_concern.name) LIKE LOWER(\'%' . $searchString . '%\')
    OR cata.name SOUNDS LIKE \'%' . $searchString . '%\'
    OR LOWER(cata.name) LIKE LOWER(\'%' . $searchString . '%\') ';
        $andOr = 1;
    }

    if (!empty($healthConcern) && !empty($lifestyleFactor)) {
        $filterString .= ' AND ';
    }

    $andOr = 0;
    foreach ($lifestyleFactor as $searchString) {
        $filterString .= $andOr ? ' OR ' : '';
        $filterString .= 'lifestyle_factor.name SOUNDS LIKE \'%' . $searchString . '%\'
    OR LOWER(lifestyle_factor.name) LIKE LOWER(\'%' . $searchString . '%\')
    OR catb.name SOUNDS LIKE \'%' . $searchString . '%\'
    OR LOWER(catb.name) LIKE LOWER(\'%' . $searchString . '%\')';
        $andOr = 1;
    }

    if ((!empty($lifestyleFactor) || !empty($healthConcern)) && !empty($andOption)) {
        $filterString .= ' AND ';
    }

    $andOr = 0;
    foreach ($andOption as $filter) {
        $filterString .= $andOr ? ' OR ' : '';
        $filterString .= 'impact.type LIKE \'%' . $filter . '%\'';
        $andOr = 1;
    }

    if (!empty($orderOption)) {
        $filterString .= ' ORDER BY ';
    }

    $andOr = 0;
    foreach ($orderOption as $filter) {
        $filterString .= $andOr ? ',' : '';
        $filterString .= ' ' . $filter;
        $andOr = 1;
    }
    return $filterString;
}

$health1 = [
    'cancer',
    'prostate',
];
$health2 = [
    'cancer'
];
$health3 = [
    'prostate'
];
$lifestyle = ['tomato'];
$filter = [];

$health1a = [
    'cancer',
    'bowel',
];
$health2a = [
    'cancer'
];
$health3a = [
    'bowel'
];
$lifestylea = ['beans'];
$lifestyleb = ['sex', 'beans', 'oral'];
$filtera = [];

$filterStatement = '
        OR LOWER(health_concern.name) LIKE LOWER(\'%' . $searchTerm . '%\')
        OR LOWER(lifestyle_factor.name) LIKE LOWER(\'%' . $searchTerm . '%\')
        OR LOWER(catb.name) LIKE LOWER(\'%' . $searchTerm . '%\')
        OR LOWER(cata.name) LIKE LOWER(\'%' . $searchTerm . '%\')';
//echo $sqlStatement . setFilterStatement($health1, $lifestyle, $filter) . ';' . '<br>';
//echo $sqlStatement . setFilterStatement($health2, $lifestyle, $filter) . ';' . '<br>';
//echo $sqlStatement . setFilterStatement($health3, $lifestyle, $filter) . ';' . '<br>';
echo $sqlStatement . setFilterStatement($health1a, $lifestylea, $filtera) . ';' . '<br>';
echo $sqlStatement . setFilterStatement($health2a, $lifestylea, $filtera) . ';' . '<br>';
echo $sqlStatement . setFilterStatement($health3a, $lifestylea, $filtera) . ';' . '<br>';
echo $sqlStatement . setFilterStatement($health3a, $lifestyleb, $filtera) . ';' . '<br>';
//echo $sqlStatement . $filterStatement . setFilterStatement($health1a, $lifestylea, $filtera) . ';' . '<br>';
//echo $sqlStatement . $filterStatement . setFilterStatement($health2a, $lifestylea, $filtera) . ';' . '<br>';
//echo $sqlStatement . $filterStatement . setFilterStatement($health3a, $lifestylea, $filtera) . ';' . '<br>';
//echo $sqlStatement . $filterStatement . setFilterStatement($health3a, $lifestyleb, $filtera) . ';' . '<br>';
