<?php 

class LogoutController extends Controller
{
    public function process($params)
    {
        $logoutManager = new LogoutModel;
        $logoutManager->logoutUser();
        $this->redirect('home');
    }
}

?>