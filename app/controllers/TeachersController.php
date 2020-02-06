<?php 

class TeachersController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Teachers';
        if($_SESSION['logged'] == true):
            $teachersManager = new TeachersModel;
            $this->view = 'teachers';
        else:
            $this->redirect('login');
        endif;
    }
}

?>