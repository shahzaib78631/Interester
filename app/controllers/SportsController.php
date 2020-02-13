<?php 

class SportsController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Sports';
        $this->data['alerts'] = "";
        
        if($_SESSION['logged'] == true):

            $sportsManager = new SportsModel;

            if(isset($_POST['submit'])):
                $sport_id = $_POST['fav_sport'];
                $this->data['alerts'] = $sportsManager->saveSport($_SESSION['id'], $sport_id);
            endif;

            $this->data['sports'] = $sportsManager->getSports();
            $this->view = 'sports';

        else:
            $this->redirect('login');
        endif;
    }
}

?>