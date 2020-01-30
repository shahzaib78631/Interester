<?php 

class ProgrammingController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Programming';
        $programmingManager = new ProgrammingModel;

        if(isset($params[0])):
            $language = $params[0];
            $proficiency = $params[1];
            $user_id = $_SESSION['id'];
            
            $programmingManager->addProgramming($user_id, $language, $proficiency);
        endif;

        $this->view = 'programming';
    }
}

?>