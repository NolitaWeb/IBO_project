<?php

namespace App\Controller;

use App\Entity\Association;
use App\Entity\Shop;
use App\Entity\ShopType;
use App\Form\AssociationType;
use App\Repository\AssociationRepository;
use App\Repository\ShopRepository;
use App\Repository\ShopTypeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/association")
 */
class AssociationController extends AbstractController
{
    /**
     * @Route("/index", name="association_index", methods={"GET"})
     */
    public function index(ShopTypeRepository $shopTypeRepository, ShopRepository $shopRepository, AssociationRepository $associationRepository, Request $request): Response
    {
        return $this->render('association/index.html.twig', [
            'associationsDelivery' => $associationRepository->findBy(['service' => '1','country' => $request->query->get('country')]),
            'associationsDrug' => $associationRepository->findBy(['service' => '2','country' => $request->query->get('country')]),
            'associationsBabySitter' => $associationRepository->findBy(['service' => '3','country' => $request->query->get('country')]),
            'associationsOther' => $associationRepository->findBy(['service' => '4','country' => $request->query->get('country')]),
            'shop' => $shopRepository->findBy(['country' => $request->query->get('country')]),
            'shopLegend' => $shopTypeRepository->findAll()
        ]);
    }

    /**
     * @Route("/list", name="association_list", methods={"GET"})
     */
    public function list(ShopTypeRepository $shopTypeRepository, ShopRepository $shopRepository, AssociationRepository $associationRepository, Request $request): Response
    {
        return $this->render('association_view/index.html.twig', [
            'associations' => $associationRepository->findAll(['service' => '4','country' => $request->query->get('country')]),
            'shop' => $shopRepository->findAll(),
            'shopLegend' => $shopTypeRepository->findAll()
        ]);
    }

    /**
     * @Route("/new", name="association_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $association = new Association();
        $form = $this->createForm(AssociationType::class, $association);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($association);
            $entityManager->flush();

            return $this->redirectToRoute('association_index');
        }

        return $this->render('association/new.html.twig', [
            'association' => $association,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="association_show", methods={"GET"})
     */
    public function show(Association $association): Response
    {
        return $this->render('association/show.html.twig', [
            'association' => $association,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="association_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Association $association): Response
    {
        $form = $this->createForm(AssociationType::class, $association);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('association_index');
        }

        return $this->render('association/edit.html.twig', [
            'association' => $association,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="association_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Association $association): Response
    {
        if ($this->isCsrfTokenValid('delete'.$association->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($association);
            $entityManager->flush();
        }

        return $this->redirectToRoute('association_index');
    }
}
