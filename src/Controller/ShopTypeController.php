<?php

namespace App\Controller;

use App\Entity\ShopType;
use App\Form\ShopTypeType;
use App\Repository\ShopTypeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/shop/type")
 */
class ShopTypeController extends AbstractController
{
    /**
     * @Route("/", name="shop_type_index", methods={"GET"})
     */
    public function index(ShopTypeRepository $shopTypeRepository): Response
    {
        return $this->render('shop_type/index.html.twig', [
            'shop_types' => $shopTypeRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="shop_type_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $shopType = new ShopType();
        $form = $this->createForm(ShopTypeType::class, $shopType);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($shopType);
            $entityManager->flush();

            return $this->redirectToRoute('shop_type_index');
        }

        return $this->render('shop_type/new.html.twig', [
            'shop_type' => $shopType,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="shop_type_show", methods={"GET"})
     */
    public function show(ShopType $shopType): Response
    {
        return $this->render('shop_type/show.html.twig', [
            'shop_type' => $shopType,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="shop_type_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, ShopType $shopType): Response
    {
        $form = $this->createForm(ShopTypeType::class, $shopType);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('shop_type_index');
        }

        return $this->render('shop_type/edit.html.twig', [
            'shop_type' => $shopType,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="shop_type_delete", methods={"DELETE"})
     */
    public function delete(Request $request, ShopType $shopType): Response
    {
        if ($this->isCsrfTokenValid('delete'.$shopType->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($shopType);
            $entityManager->flush();
        }

        return $this->redirectToRoute('shop_type_index');
    }
}
