<?php 
/**
 * Class for controlling user registration
 */
class RegisterController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Register';
        $registerModel = new RegisterModel;
        
        if(isset($_POST['register'])):
            $first_name = $_POST['first-name'];
            $last_name = $_POST['last-name'];
            $roll_no = $_POST['roll-no'];
            $email = $_POST['email'];
            $pass = $_POST['password'];
            $batch = $_POST['batches'];
            
            if(!empty(filter_var($email, FILTER_VALIDATE_EMAIL))):
                $this->data['alert'] = $registerModel->registerUser($first_name, $last_name, $roll_no, $email, $pass, $batch);

            else:
                $this->data['alert'] = Dialogs::error("Email Not Valid");;
            endif;
        endif;

        $this->view = 'register';
    }
}

?>