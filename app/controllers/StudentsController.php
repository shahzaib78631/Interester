<?php 

class StudentsController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Students';

        if($_SESSION['logged'] == true):
            $studentsManager = new StudentsModel;

            $section = $_GET['section'];
            $value = $_GET['value'];
            
            $this->data['students'] = $studentsManager->getStudents($section , $value);

            $this->view = 'students';
        else:
            $this->redirect('login');
        endif;
    }
}

?>