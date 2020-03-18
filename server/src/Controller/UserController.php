<?php

//src/Controller/UserController.php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

class UserController extends AbstractController
{
  public function welcome(Request $req): Response
  {
      return $this->render('home/bienvenu.html.twig', ['controller_name' => 'UserController',
      ]);
  }
}
