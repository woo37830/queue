<?php// copy file content into a string var$json_file = file_get_contents('test_json.json');// convert the string to a json object$jfo = json_decode($json_file);// read the title value// copy the apps array to a php var$apps = $jfo->apps;// listing postsforeach ($apps as $app) {    echo "\n";    echo "\t".$app->app;    $processes = $app->processes;    foreach ($processes as $process) {        echo "\n";        echo "\t\t".$process->process;        }}echo "\nAll Done!\n";?>