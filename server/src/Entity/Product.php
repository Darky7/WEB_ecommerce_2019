<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ProductRepository")
 */
class Product
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("product:show")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     * @Groups("product:show")
     */
    private $nom;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups("product:show")
     */
     private $model;

     /**
      * @ORM\Column(type="float")
      * @Groups("product:show")
      */
    private $prix;

    /**
     * @ORM\Column(type="datetime")
     * @Groups("product:show")
     */
    private $createdAt;


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getModel(): ?string
    {
        return $this->model;
    }

    public function setModel(string $model): self
    {
        $this->model = $model;

        return $this;
    }

    public function getPrix(): ?float
    {
        return $this->prix;
    }

    public function setPrice(float $price): self
    {
        $this->prix = $price;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }
}
