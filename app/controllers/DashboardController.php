<?php 

class DashboardController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Dashboard';
        
        $this->view = 'dashboard';
    }
}

?>