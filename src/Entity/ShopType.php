<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ShopTypeRepository")
 */
class ShopType
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $typeName;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Shop", mappedBy="ShopType")
     */
    private $name;

    public function __construct()
    {
        $this->name = new ArrayCollection();
    }

    public function __toString()
    {
        return $this->getTypeName();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTypeName(): ?string
    {
        return $this->typeName;
    }

    public function setTypeName(string $typeName): self
    {
        $this->typeName = $typeName;

        return $this;
    }

    /**
     * @return Collection|Shop[]
     */
    public function getName(): Collection
    {
        return $this->name;
    }

    public function addName(Shop $name): self
    {
        if (!$this->name->contains($name)) {
            $this->name[] = $name;
            $name->setShopType($this);
        }

        return $this;
    }

    public function removeName(Shop $name): self
    {
        if ($this->name->contains($name)) {
            $this->name->removeElement($name);
            // set the owning side to null (unless already changed)
            if ($name->getShopType() === $this) {
                $name->setShopType(null);
            }
        }

        return $this;
    }
}
