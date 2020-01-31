<?php 

class ProfileController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Profile';
        if($_SESSION['logged'] == true):
            $profileManager = new ProfileModel;
            $dashboardManager = new DashboardModel;
            
            $this->data['profile'] = $dashboardManager->getUserData($_SESSION['id']);

            $this->view = 'profile';
        else:
            $this->redirect('login');
        endif;
    }
}

?>