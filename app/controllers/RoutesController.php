<?php 

/**
 * Class For controlling routes
 */
class RoutesController extends Controller
{
    public $controller;
    private $role;

    public function process($params)
    {
        // The first part of the URL is the controller name
        $page = str_replace('-', '', ucwords(array_shift($params), '-'));
        
        session_start();

        if(isset($_SESSION['role'])){
            $this->role = $_SESSION['role'];
        }
        else {
            $this->role = 0;
        }
        /**
         * For controlling access to pages
         * i.e campus, faculty etc are only 
         * accessable to super admin
         */
        
        if(Routes::isAccessible($page, $this->role)){
            //Create Controller
            
            $this->controller = $this->createControllerFor($page);
            $this->controller->process($params);

            $this->data['title'] = $this->controller->head['title'];
            $this->data['description'] = $this->controller->head['description'];
            
            // Sets the main template
            $this->view = 'app';
        }
        else{
            $this->redirect('error');
        }

        
    }

    /**
     * Function for creating a controller 
     * for required page
     *
     * @param [type] $page
     * @return void
     */
    private function createControllerFor($page)
    {
        $controllerClass = $page . 'Controller';
        $fileExist = file_exists('app/controllers/' . $controllerClass . '.php');

        if ($fileExist && $controllerClass  != "Controller")
            return new $controllerClass;
        else
            $this->redirect('error');
    }
}


?>