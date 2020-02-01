<?php 

class DashboardController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Dashboard';
        $this->data['alerts'] = '';
        if($_SESSION['logged'] == true):

            $dashboardManager = new DashboardModel;

            if(isset($_POST['submit_image']))
                $this->data['alerts'] = $dashboardManager->saveImage($_SESSION['id']);

            if(isset($_POST['submit'])):

                if(!empty($_POST['first_name']) && !empty($_POST['last_name'])):
                    
                    $user_id = $_SESSION['id'];
                    $first_name = $_POST['first_name'];
                    $last_name = $_POST['last_name'];
                    $facebook = $_POST['facebook'];
                    $linkedin = $_POST['linkedin'];
                    $github = $_POST['github'];

                    $this->data['alerts'] = $dashboardManager->saveUserProfile($user_id, $first_name, $last_name, $facebook, $linkedin, $github);
            
                else:
                    $this->data['alerts'] = Dialogs::error('Please Add first name and last name');
                endif;

            endif;
            
            $this->data['profile'] = $dashboardManager->getUserData($_SESSION['id']);
            
            $this->view = 'dashboard';
        else:
            $this->redirect('login');
        endif;
    }
}

?>