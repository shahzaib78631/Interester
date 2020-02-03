<?php
 /**
  * undocumented class
  */

 class App
 {
     /**
      * Class constructor
      */
     public function __construct($url)
     {
        
        $this->autoload();

        //For connection to database
        Db::connect("localhost", "root", "", "interester");
        
        $parsedURL = $this->parseUrl($url);

        $router = new RoutesController;
        $router->process($parsedURL);
        $router->renderView();

     }

    private function autoload()
    {
        // Registering the function so that PHP executes it as an autoloader
        spl_autoload_register(
            function($class)
            {
                // If class ends with a string "Controller"? then load file from controller
                if (preg_match('/Controller$/', $class))
                    require_once("app/controllers/" . $class . ".php");
                else
                    require_once("app/models/" . $class . ".php");
            }
        );
    }
     
    /**
     * Function to parse url
     *
     * @param [type] $url
     * @return void
     */
    private function parseUrl($url)
    {
        $parsedURL = parse_url($url);
        $parsedURL['path'] = ltrim($parsedURL['path'], '/');
        $parsedURL['path'] = trim($parsedURL['path']);

        $explodedUrl = explode("/", $parsedURL['path']);

        return $explodedUrl;
    }


}
 
?>
