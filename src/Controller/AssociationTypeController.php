<?php

namespace App\Controller;

use App\Entity\AssociationType;
use App\Form\AssociationTypeType;
use App\Repository\AssociationTypeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/association/type")
 */
class AssociationTypeController extends AbstractController
{
    /**
     * @Route("/", name="association_type_index", methods={"GET"})
     */
    public function index(AssociationTypeRepository $associationTypeRepository): Response
    {
        return $this->render('association_type/index.html.twig', [
            'association_types' => $associationTypeRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="association_type_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $associationType = new AssociationType();
        $form = $this->createForm(AssociationTypeType::class, $associationType);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($associationType);
            $entityManager->flush();

            return $this->redirectToRoute('association_type_index');
        }

        return $this->render('association_type/new.html.twig', [
            'association_type' => $associationType,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="association_type_show", methods={"GET"})
     */
    public function show(AssociationType $associationType): Response
    {
        return $this->render('association_type/show.html.twig', [
            'association_type' => $associationType,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="association_type_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, AssociationType $associationType): Response
    {
        $form = $this->createForm(AssociationTypeType::class, $associationType);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('association_type_index');
        }

        return $this->render('association_type/edit.html.twig', [
            'association_type' => $associationType,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="association_type_delete", methods={"DELETE"})
     */
    public function delete(Request $request, AssociationType $associationType): Response
    {
        if ($this->isCsrfTokenValid('delete'.$associationType->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($associationType);
            $entityManager->flush();
        }

        return $this->redirectToRoute('association_type_index');
    }
}
