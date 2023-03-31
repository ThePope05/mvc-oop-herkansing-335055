<?php

class VechterModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getFighters()
    {
        $sql = 'SELECT  *
                FROM    PoundForPound';

        $this->db->query($sql);

        return $this->db->resultSet();        
    }

}