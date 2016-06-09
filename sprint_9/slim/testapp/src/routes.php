<?php
// Routes

$app->get('/[{name}]', function ($request, $response, $args) {
    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");

    // Render index view
    return $this->renderer->render($response, 'index.phtml', $args);
});

$app->get('/word/', function ($request, $response, $args) {
    echo "hello";

    // Render index view
    return $this->renderer->render($response, 'word.phtml', $args);
});

$app->post('/word/', function ($request, $response, $args) {
    echo "goodbye";

    // Render index view
    return $this->renderer->render($response, 'view.phtml', $args);
});

