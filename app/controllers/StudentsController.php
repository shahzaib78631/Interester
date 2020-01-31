<?php 

class StudentsController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Students';

        if($_SESSION['logged'] == true):
            $studentsManager = new StudentsModel;

            $table = $_GET['section'];
            $value = $_GET['card'];
            
            $this->data['students'] = $studentsManager->getStudents($table , $value);

            $this->view = 'students';
        else:
            $this->redirect('login');
        endif;
    }
}

?>