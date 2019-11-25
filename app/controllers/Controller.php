<?php

abstract class Controller
{

    protected $data = [];
    protected $view = "";
    protected $head = ['title' => '', 'description' => ''];


    /**
     * Method to process the parameters
     *
     * @param [type] $params
     * @return void
     */
    abstract function process($params);

    /**
     * Function that will render the view to the user
     *
     * @return void
     */
    public function renderView()
    {
        if ($this->view)
        {
            extract($this->data);
            require("app/views/" . $this->view . ".html");
        }
    }

    // 
    /**
     * Simple redirection method. 
     * One that sends a user to another page and terminates the current script.
     *
     * @param [type] $url
     * @return void
     */ 
    public function redirect($url)
    {
        header("Location: $url");
        header("Connection: close");
            exit;
    }

}