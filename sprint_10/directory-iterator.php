<?php
try {
    $iterations = new DirectoryIterator('../');
    foreach ($iterations as $dir) {
        if (!$iterations->isFile()) {
            echo $dir . "\n";
        }
    }
} catch (Exception $e) {
    echo "no file here...";
}
