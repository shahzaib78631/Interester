<?php 

class ProgrammingController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Programming';
        $programmingManager = new ProgrammingModel;

        if(isset($_GET['lang'])):
            $language = $_GET['lang'];
            $proficiency = $_GET['value'];
            $user_id = $_SESSION['id'];
            
            $programmingManager->addProgramming($user_id, $language, $proficiency);
            $this->redirect('programming');
        endif;

        $this->data['langs'] = $programmingManager->getLanguages();
        
        $this->view = 'programming';
    }
}

?>