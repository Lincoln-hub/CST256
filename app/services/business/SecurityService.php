<?php 
namespace App\services\business;

use App\Models\UserModel;
use App\services\data\SecurityDAO;


class SecurityService
{
    private $verifyCred;
    
    
    public function login(UserModel $credentials)
    {
        //instantiate the data access layer
        $this->verifyCred = new SecurityDAO();
        
        //return true or false by passing the credentials to the object
        return $this->verifyCred->fingByUser($credentials);
    }
}