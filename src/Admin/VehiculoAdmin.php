<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

use App\Entity\Vehiculo;


final class VehiculoAdmin extends AbstractAdmin
{
    protected function configureDatagridFilters(DatagridMapper $filter): void
    {
        $filter
            ->add('id')
            ->add('nombre')
            ->add('placa')
            ->add('is_active')
        ;
    }

    public function toString(object $object): string
    {
        return $object instanceof Vehiculo
        ? 'Vehículo'.$object->getNombre()
        : 'Vehículo'; // shown in the breadcrumb on the create view
    }

    protected function configureListFields(ListMapper $list): void
    {
        $list
            ->add('id')
            ->add('nombre')
            ->add('placa')
            ->add('is_active')
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
            ->add('nombre')
            ->add('placa')
            ->add('transporte')
            ->add('is_active')
        ;
    }

    protected function configureShowFields(ShowMapper $show): void
    {
        $show
            ->add('id')
            ->add('nombre')
            ->add('placa')
            ->add('is_active')
        ;
    }
}
