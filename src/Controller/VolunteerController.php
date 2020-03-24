<?php

namespace App\Controller;

use App\Entity\Availability;
use App\Entity\Volunteer;
use App\Form\VolunteerType;
use App\Repository\VolunteerRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/volunteer")
 */
class VolunteerController extends AbstractController
{
    /**
     * @Route("/", name="volunteer_index", methods={"GET"})
     */
    public function index(VolunteerRepository $volunteerRepository): Response
    {
        return $this->render('volunteer/index.html.twig', [
            'volunteers' => $volunteerRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="volunteer_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $volunteer = new Volunteer();
        $availability = new Availability();
        $volunteer->getAvailabilityForm()->add($availability);
        $form = $this->createForm(VolunteerType::class, $volunteer);
        $form->handleRequest($request);
        
        

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $volunteer->setAvailability($availability);
            $entityManager->persist($volunteer);
            $entityManager->flush();

            return $this->redirectToRoute('confirmation');
        }

        return $this->render('volunteer/new.html.twig', [
            'volunteer' => $volunteer,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="volunteer_show", methods={"GET"})
     */
    public function show(Volunteer $volunteer): Response
    {
        return $this->render('volunteer/show.html.twig', [
            'volunteer' => $volunteer,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="volunteer_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Volunteer $volunteer): Response
    {
        $form = $this->createForm(VolunteerType::class, $volunteer);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('volunteer_index');
        }

        return $this->render('volunteer/edit.html.twig', [
            'volunteer' => $volunteer,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="volunteer_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Volunteer $volunteer): Response
    {
        if ($this->isCsrfTokenValid('delete'.$volunteer->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($volunteer);
            $entityManager->flush();
        }

        return $this->redirectToRoute('volunteer_index');
    }
}
