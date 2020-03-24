<?php

namespace App\Form;

use App\Entity\Association;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class AssociationType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('address')
            ->add('municipality')
            ->add('phone')
            ->add('contactNotes')
            ->add('website')
            ->add('email')
            ->add('serviceUsers')
            ->add('service', ChoiceType::class, [
                'choices' => [
                    'Consegna spesa a domicilio' => '1',
                    'Consegna farmaci a domicilio' => '2',
                    'Baby sitter per personale sanitario' => '3',
                    'Altro (specificare)' => '4',
                ],
                ])
            ->add('country')
            ->add('otherService')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Association::class,
        ]);
    }
}
