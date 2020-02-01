<?php 

class StudentsController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Students';

        $studentsManager = new StudentsModel;

        $table = $_GET['section'];
        $value = $_GET['card'];
        
        $this->data['students'] = $studentsManager->getStudents($table , $value);

        $this->data['levels'] = $studentsManager->getLevels($table , $value);
        
        $this->data['batches'] = $studentsManager->getBatches($table , $value);

        $this->view = 'students';
    }
}

?>