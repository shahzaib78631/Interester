<?php 

class HomeController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Home';
        
        $programmingManager = new ProgrammingModel;

        $this->data['langs'] = $programmingManager->getLanguagesCards();

        $this->view = 'home';
    }
}

?>