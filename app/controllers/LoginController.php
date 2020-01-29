<?php 

class LoginController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Login';
        $this->view = 'login';
    }
}

?>