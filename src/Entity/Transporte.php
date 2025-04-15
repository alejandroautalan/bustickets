<?php

namespace App\Entity;

use App\Repository\TransporteRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: TransporteRepository::class)]
class Transporte
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 128)]
    private ?string $nombre = null;

    #[ORM\Column]
    private ?int $nro_asientos = null;

    /**
     * @var Collection<int, TransporteAsiento>
     */
    #[ORM\OneToMany(targetEntity: TransporteAsiento::class, mappedBy: 'transporte', orphanRemoval: true)]
    private Collection $asientos;

    public function __construct()
    {
        $this->asientos = new ArrayCollection();
    }

    public function __toString()
    {
        return ''.$this->nombre;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNombre(): ?string
    {
        return $this->nombre;
    }

    public function setNombre(string $nombre): static
    {
        $this->nombre = $nombre;

        return $this;
    }

    public function getNroAsientos(): ?int
    {
        return $this->nro_asientos;
    }

    public function setNroAsientos(int $nro_asientos): static
    {
        $this->nro_asientos = $nro_asientos;

        return $this;
    }

    /**
     * @return Collection<int, TransporteAsiento>
     */
    public function getAsientos(): Collection
    {
        return $this->asientos;
    }

    public function addAsiento(TransporteAsiento $asiento): static
    {
        if (!$this->asientos->contains($asiento)) {
            $this->asientos->add($asiento);
            $asiento->setTransporte($this);
        }

        return $this;
    }

    public function removeAsiento(TransporteAsiento $asiento): static
    {
        if ($this->asientos->removeElement($asiento)) {
            // set the owning side to null (unless already changed)
            if ($asiento->getTransporte() === $this) {
                $asiento->setTransporte(null);
            }
        }

        return $this;
    }
}
