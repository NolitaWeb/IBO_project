<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CountryRepository")
 */
class Country
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
    private $countryName;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Association", mappedBy="country", orphanRemoval=true)
     */
    private $associations;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Volunteer", mappedBy="country")
     */
    private $volunteers;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Shop", mappedBy="country")
     */
    private $shops;

    public function __toString()
    {
        return $this->countryName;
    }

    public function __construct()
    {
        $this->associations = new ArrayCollection();
        $this->volunteers = new ArrayCollection();
        $this->shops = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCountryName(): ?string
    {
        return $this->countryName;
    }

    public function setCountryName(string $countryName): self
    {
        $this->countryName = $countryName;

        return $this;
    }

    /**
     * @return Collection|Association[]
     */
    public function getAssociations(): Collection
    {
        return $this->associations;
    }

    public function addAssociation(Association $association): self
    {
        if (!$this->associations->contains($association)) {
            $this->associations[] = $association;
            $association->setCountry($this);
        }

        return $this;
    }

    public function removeAssociation(Association $association): self
    {
        if ($this->associations->contains($association)) {
            $this->associations->removeElement($association);
            // set the owning side to null (unless already changed)
            if ($association->getCountry() === $this) {
                $association->setCountry(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Volunteer[]
     */
    public function getVolunteers(): Collection
    {
        return $this->volunteers;
    }

    public function addVolunteer(Volunteer $volunteer): self
    {
        if (!$this->volunteers->contains($volunteer)) {
            $this->volunteers[] = $volunteer;
            $volunteer->setCountry($this);
        }

        return $this;
    }

    public function removeVolunteer(Volunteer $volunteer): self
    {
        if ($this->volunteers->contains($volunteer)) {
            $this->volunteers->removeElement($volunteer);
            // set the owning side to null (unless already changed)
            if ($volunteer->getCountry() === $this) {
                $volunteer->setCountry(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Shop[]
     */
    public function getShops(): Collection
    {
        return $this->shops;
    }

    public function addShop(Shop $shop): self
    {
        if (!$this->shops->contains($shop)) {
            $this->shops[] = $shop;
            $shop->setCountry($this);
        }

        return $this;
    }

    public function removeShop(Shop $shop): self
    {
        if ($this->shops->contains($shop)) {
            $this->shops->removeElement($shop);
            // set the owning side to null (unless already changed)
            if ($shop->getCountry() === $this) {
                $shop->setCountry(null);
            }
        }

        return $this;
    }
}
