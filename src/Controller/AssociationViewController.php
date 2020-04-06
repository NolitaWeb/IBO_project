<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class AssociationViewController extends AbstractController
{
    /**
     * @Route("/association/view", name="association_view")
     */
    public function index()
    {
        return $this->render('association_view/index.html.twig', [
            'controller_name' => 'AssociationViewController',
        ]);
    }
}
