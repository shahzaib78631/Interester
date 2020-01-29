<?php 

class LoginController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Login';
        
        $loginModel = new LoginModel;

        if(isset($_POST['login'])):
            $email = $_POST['email'];
            if(!empty(filter_var($email, FILTER_VALIDATE_EMAIL))):

                if($loginModel->loginUser($email , $_POST['password'])){
                    $_SESSION['logged'] = true;

                    $this->redirect('home');
                }
                else{
                    $this->data['alert'] = Dialogs::error('User not found') ;
                }
            else:
                $this->data['alert'] = Dialogs::error("Email Not Valid");;
            endif;
        endif;

        $this->view = 'login';
    }
}

?>