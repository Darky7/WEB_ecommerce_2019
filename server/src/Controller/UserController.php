<?php

//src/Controller/UserController.php
namespace App\Controller;

use App\Entity\User;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Serializer\Exception\NotEncodableValueException;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use App\Security\LoginFormAuthenticator;

class UserController extends AbstractController
{
    /**
     * @Route("/login", name="login_user", methods={"POST"})
     */
  public function UserLogin(Request $request,
                            SerializerInterface $serializer,
                            UserRepository $userRepository)
  {
      $jsonRecu = $request->getContent();

      try{
          $jsonRecu = $serializer->deserialize($jsonRecu, User::class, 'json');
          $jsonEnvoi = $userRepository->findBy(['email'=>$jsonRecu->getEmail()]);
          if($userRepository->findBy(['email' => $jsonRecu->getEmail(), 'password'=>$jsonRecu->getPassword()])) {
              return $this->json($jsonEnvoi, 200, [], ['groups' => 'user:log']);
          }
          return $this->json([
              'status' => 404,
              'message' => "Mauvais identifiant !"
          ]);
      } catch (NotEncodableValueException $e) {
          return $this->json([
              'status' => 400,
              'message' => $e->getMessage()
          ]);
      }
  }

  /**
   * @Route("/register",name="api_user_create",methods={"POST"})
   */
  public function createUser(Request $request,
                             SerializerInterface $serializer,
                             EntityManagerInterface $em,
                             ValidatorInterface $validator,
                             UserPasswordEncoderInterface $passwordEncoder)
  {
      $jsonRecu = $request->getContent();

      try{
        $identifiant = $serializer->deserialize($jsonRecu, User::class, 'json');

        $identifiant->setApiToken("ApiToken");
        $identifiant->setRoles([]);

        $em->persist($identifiant);
        $em->flush();
        return $this->json($identifiant, 201, [], ['groups' => 'user:show']);
      } catch (NotEncodableValueException $e) {
        return $this->json([
            'status' => 400,
            'message' => $e->getMessage()
        ]);
      }
  }
}
