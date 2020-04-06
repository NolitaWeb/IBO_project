<?php

namespace App\Form;

use App\Entity\Volunteer;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class VolunteerType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('lastname')
            ->add('name')
            ->add('birthday', DateType::class, [
                'widget' => 'single_text'])
            ->add('address')
            ->add('zipcode')
            ->add('city')
            ->add('phone')
            ->add('email')
            ->add('carOwner')
            ->add('inception', DateType::class, [
                'widget' => 'single_text'])
            ->add('expiry', DateType::class, [
                'widget' => 'single_text'])
            ->add('delivery')
            ->add('babySitting')
            ->add('note', TextareaType::class, [
                'attr' => ['class' => 'tinymce', 'style' => 'width: 100%'], 'required'   => false])
            ->add('country')
            ->add('availabilityForm', CollectionType::class, [
                'entry_type' => AvailabilityType::class,
                'entry_options' => ['label' => false],
            ])
            ->add('drugDelivery')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Volunteer::class,
        ]);
    }
}
