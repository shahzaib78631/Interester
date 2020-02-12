<?php 

class ProfileController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Profile';
        
        $profileManager = new ProfileModel;
        $dashboardManager = new DashboardModel;
        $programmingManager = new ProgrammingModel;
        
        $this->data['profile'] = $dashboardManager->getUserData($_GET['id']);

        $this->data['langs'] = $programmingManager->getUserLanguagesCards($_GET['id']);

        $this->view = 'profile';
    }
}

?>