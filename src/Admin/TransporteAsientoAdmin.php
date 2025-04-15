<?php

declare(strict_types=1);

namespace App\Admin;

use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

use App\Entity\TransporteAsiento;


final class TransporteAsientoAdmin extends AbstractAdmin
{
    protected function configureDatagridFilters(DatagridMapper $filter): void
    {
        $filter
            ->add('id')
            ->add('numero')
            ->add('categoria')
        ;
    }

    public function toString(object $object): string
    {
        return $object instanceof TransporteAsiento
        ? 'Asiento N°'.$object->getNumero()
        : 'Asiento'; // shown in the breadcrumb on the create view
    }

    protected function configureListFields(ListMapper $list): void
    {
        $list
            ->add('id')
            ->add('numero')
            ->add('categoria')
            ->add(ListMapper::NAME_ACTIONS, null, [
                'actions' => [
                    'show' => [],
                    'edit' => [],
                    'delete' => [],
                ],
            ]);
    }

    protected function configureFormFields(FormMapper $form): void
    {
        $form
            #->add('id')
            ->add('numero')
            ->add('categoria', ChoiceType::class, [
                'choices' => TransporteAsiento::$categoria_choices
            ])
        ;
    }

    protected function configureShowFields(ShowMapper $show): void
    {
        $show
            ->add('id')
            ->add('numero')
            ->add('categoria')
        ;
    }
}
