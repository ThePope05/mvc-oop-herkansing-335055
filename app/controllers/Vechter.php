<?php

class Vechter extends BaseController
{
    private $VechterModel;

    public function __construct()
    {
        $this->VechterModel = $this->model('VechterModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Best fighters from ufc, pound for pound'
        ];

        $this->view('Vechters/index', $data);
    }


    public function getVechters($id1=NULL, $id2=NULL) 
    {
        $Vechters = $this->VechterModel->getVechters();

        $tableRows = "";
        foreach ($Vechters as $value) {
            $tableRows .= "<tr>
                                <td>$value->Id</td>
                                <td>$value->Name</td>
                                <td>$value->Ranking</td>
                                <td>$value->Length</td>
                                <td>$value->Weight</td>
                                <td>$value->Age</td>
                                <td>$value->WinsByKnockout</td>
                           </tr>";
        }

        $data = [
            'title' => 'Best fighters from ufc',
            'tableRows' => $tableRows
        ];

        $this->view('Vechter/getVechters', $data);
    }
}