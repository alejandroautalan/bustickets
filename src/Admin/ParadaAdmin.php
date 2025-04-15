<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

use Sonata\AdminBundle\Route\RouteCollectionInterface;
use Sonata\AdminBundle\Admin\AdminInterface;
use Knp\Menu\ItemInterface as MenuItemInterface;


final class ParadaAdmin extends AbstractAdmin
{
    protected function configureDatagridFilters(DatagridMapper $filter): void
    {
        $filter
            ->add('id')
            ->add('nombre')
        ;
    }

    protected function configureListFields(ListMapper $list): void
    {
        $list
            ->add('id')
            ->add('nombre')
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
        ;
        if(!$this->isChild()) {
            $form->add('provincia')
                ->add('ciudad')
                ;
        }
    }

    protected function configureShowFields(ShowMapper $show): void
    {
        $show
            ->add('id')
            ->add('nombre')
        ;
    }

    // protected function configureRoutes(RouteCollectionInterface $collection): void
    // {
    //     if ($this->isChild()) {
    //         return;
    //     }
    //
    //     // This is the route configuration as a parent
    //     $collection->clear();
    //
    // }
}
