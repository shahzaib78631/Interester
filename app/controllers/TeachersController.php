<?php 

class TeachersController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Teachers';
        if($_SESSION['logged'] == true):
            $teachersManager = new TeachersModel;
            $this->data['teachers'] = $teachersManager->getTeachers();
            $this->data['question_1'] = $teachersManager->question(1);
            $this->data['question_2'] = $teachersManager->question(2);

            if(isset($_POST['submit'])):
                $survey[] =  array('question' => 0, 'answer' => $_POST['fav_teacher']);
                
                if(!isset($_POST['q1']))    
                    $survey[] =  array('question' => 1, 'answer' => 0);
                else 
                    $survey[] =  array('question' => 1, 'answer' => $_POST['q1']);

                if(!isset($_POST['q2']))    
                    $survey[] =  array('question' => 2, 'answer' => 0);
                else 
                    $survey[] =  array('question' => 2, 'answer' => $_POST['q2']);
                
                foreach ($survey as $opinion) {
                    $teachersManager->save($_SESSION['id'] , $opinion['question'], $opinion['answer']);
                }

            endif;
                $this->view = 'teachers';
        else:
            $this->redirect('login');
        endif;
    }
}

?>