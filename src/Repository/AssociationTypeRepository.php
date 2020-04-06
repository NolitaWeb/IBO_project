<?php

namespace App\Repository;

use App\Entity\AssociationType;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method AssociationType|null find($id, $lockMode = null, $lockVersion = null)
 * @method AssociationType|null findOneBy(array $criteria, array $orderBy = null)
 * @method AssociationType[]    findAll()
 * @method AssociationType[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AssociationTypeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, AssociationType::class);
    }

    // /**
    //  * @return AssociationType[] Returns an array of AssociationType objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?AssociationType
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
