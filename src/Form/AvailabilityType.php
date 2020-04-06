<?php

namespace App\Form;

use App\Entity\Availability;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class AvailabilityType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('monday')
            ->add('mondaystart', ChoiceType::class, [
                'choices' => [
                    '6.00 - 10.00' => '1',
                    '10.00 - 14.00' => '2',
                    '14.00 - 16.00' => '3',
                    '16.00 - 20.00' => '4',
                ],
                'placeholder' => 'Fascia oraria',
                'required'   => false
                ])
            ->add('thuesday')
            ->add('thuesdaystart', ChoiceType::class, [
                'choices' => [
                    '6.00 - 10.00' => '1',
                    '10.00 - 14.00' => '2',
                    '14.00 - 16.00' => '3',
                    '16.00 - 20.00' => '4',
                ],
                'placeholder' => 'Fascia oraria',
                'required'   => false
                ])
            ->add('wednesday')
            ->add('wednesdaystart', ChoiceType::class, [
                'choices' => [
                    '6.00 - 10.00' => '1',
                    '10.00 - 14.00' => '2',
                    '14.00 - 16.00' => '3',
                    '16.00 - 20.00' => '4',
                ],
                'placeholder' => 'Fascia oraria',
                'required'   => false
                ])
            ->add('thursday')
            ->add('thursdaystart', ChoiceType::class, [
                'choices' => [
                    '6.00 - 10.00' => '1',
                    '10.00 - 14.00' => '2',
                    '14.00 - 16.00' => '3',
                    '16.00 - 20.00' => '4',
                ],
                'placeholder' => 'Fascia oraria',
                'required'   => false
                ])
            ->add('friday')
            ->add('fridaystart', ChoiceType::class, [
                'choices' => [
                    '6.00 - 10.00' => '1',
                    '10.00 - 14.00' => '2',
                    '14.00 - 16.00' => '3',
                    '16.00 - 20.00' => '4',
                ],
                'placeholder' => 'Fascia oraria',
                'required'   => false
                ])
            ->add('saturday')
            ->add('saturdaystart', ChoiceType::class, [
                'choices' => [
                    '6.00 - 10.00' => '1',
                    '10.00 - 14.00' => '2',
                    '14.00 - 16.00' => '3',
                    '16.00 - 20.00' => '4',
                ],
                'placeholder' => 'Fascia oraria',
                'required'   => false
                ])
            ->add('sunday')
            ->add('sundaystart', ChoiceType::class, [
                'choices' => [
                    '6.00 - 10.00' => '1',
                    '10.00 - 14.00' => '2',
                    '14.00 - 16.00' => '3',
                    '16.00 - 20.00' => '4',
                ],
                'placeholder' => 'Fascia oraria',
                'required'   => false
                ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Availability::class,
        ]);
    }
}
