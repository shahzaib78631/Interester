<?php
mb_internal_encoding("UTF-8");

require_once 'app/core/App.php';
require_once 'app/core/Routes.php';
require_once 'app/core/Database.php';


$app = new App($_SERVER['REQUEST_URI']);
//$database = new Database();

?>
