<?php

namespace App\Repository;

use App\Entity\Product;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Product|null find($id, $lockMode = null, $lockVersion = null)
 * @method Product|null findOneBy(array $criteria, array $orderBy = null)
 * @method Product[]    findAll()
 * @method Product[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ProductRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Product::class);
    }

    public function findLastProduct()
    {
        return $this->createQueryBuilder('product')
            ->setMaxResults(8)
            ->orderBy('product.createdAt', 'DESC')
            ->getQuery()
            ->getResult();
    }

    public function findWithFilter(string $model)
    {
        return $this->createQueryBuilder('product')
            ->where('product.model = :val')
            ->setParameter('val', $model)
            ->orderBy('product.prix', 'DESC')
            ->getQuery()
            ->getResult();
    }
}
