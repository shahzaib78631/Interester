<?php 

class HomeController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Home';
        $this->view = 'home';
    }
}

?>