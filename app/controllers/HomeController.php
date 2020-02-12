<?php 

class HomeController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Home';
        
        $programmingManager = new ProgrammingModel;
        $teachersManager = new TeachersModel;
        $teamManager = new TeamModel;

        $this->data['langs'] = $programmingManager->getTopLangs();
        

        $this->data['team'] = $teamManager->getTeam();
        $this->data['teachers'] = $teachersManager->getFavTeachers();

        $this->view = 'home';
    }
}

?>