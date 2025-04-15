<?php

namespace App\Entity;

use App\Repository\TransporteAsientoRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: TransporteAsientoRepository::class)]
class TransporteAsiento
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(inversedBy: 'asientos')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Transporte $transporte = null;

    #[ORM\Column]
    private ?int $numero = null;

    #[ORM\Column(nullable: true)]
    private ?int $categoria = null;


    public static $categoria_choices = [
        'Comun' => 1,
        'Semicama' => 2,
        'Cama' => 3,
        'Premium'=> 4
    ];

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTransporte(): ?Transporte
    {
        return $this->transporte;
    }

    public function setTransporte(?Transporte $transporte): static
    {
        $this->transporte = $transporte;

        return $this;
    }

    public function getNumero(): ?int
    {
        return $this->numero;
    }

    public function setNumero(int $numero): static
    {
        $this->numero = $numero;

        return $this;
    }

    public function getCategoria(): ?int
    {
        return $this->categoria;
    }

    public function setCategoria(?int $categoria): static
    {
        $this->categoria = $categoria;

        return $this;
    }
}
