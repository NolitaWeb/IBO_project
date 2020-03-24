<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Entity(repositoryClass="App\Repository\VolunteerRepository")
 */
class Volunteer
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
    private $lastname;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $name;

    /**
     * @ORM\Column(type="date")
     */
    private $birthday;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $address;

    /**
     * @ORM\Column(type="string", length=5, nullable=true)
     */
    private $zipcode;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $city;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Country", inversedBy="volunteers")
     * @ORM\JoinColumn(nullable=false)
     */
    private $country;

    /**
     * @ORM\Column(type="string", length=20)
     */
    private $phone;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $email;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $carOwner;

    /**
     * @ORM\Column(type="date")
     */
    private $inception;

    /**
     * @ORM\Column(type="date")
     */
    private $expiry;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $delivery;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $babySitting;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $drugDelivery;

    /**
     * @ORM\Column(type="string", length=2550, nullable=true)
     */
    private $note;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Availability", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $availability;

    protected $availabilityForm;

    public function __construct()
    {
        $this->availabilityForm = new ArrayCollection();
    }

    public function getLastname(): ?string
    {
        return $this->lastname;
    }

    public function setLastname(string $lastname): self
    {
        $this->lastname = $lastname;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getBirthday(): ?\DateTimeInterface
    {
        return $this->birthday;
    }

    public function setBirthday(\DateTimeInterface $birthday): self
    {
        $this->birthday = $birthday;

        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->address;
    }

    public function setAddress(string $address): self
    {
        $this->address = $address;

        return $this;
    }

    public function getZipcode(): ?string
    {
        return $this->zipcode;
    }

    public function setZipcode(?string $zipcode): self
    {
        $this->zipcode = $zipcode;

        return $this;
    }

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(string $city): self
    {
        $this->city = $city;

        return $this;
    }

    public function getCountry(): ?Country
    {
        return $this->country;
    }

    public function setCountry(?Country $country): self
    {
        $this->country = $country;

        return $this;
    }

    public function getPhone(): ?string
    {
        return $this->phone;
    }

    public function setPhone(string $phone): self
    {
        $this->phone = $phone;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getCarOwner(): ?bool
    {
        return $this->carOwner;
    }

    public function setCarOwner(?bool $carOwner): self
    {
        $this->carOwner = $carOwner;

        return $this;
    }

    public function getInception(): ?\DateTimeInterface
    {
        return $this->inception;
    }

    public function setInception(\DateTimeInterface $inception): self
    {
        $this->inception = $inception;

        return $this;
    }

    public function getExpiry(): ?\DateTimeInterface
    {
        return $this->expiry;
    }

    public function setExpiry(\DateTimeInterface $expiry): self
    {
        $this->expiry = $expiry;

        return $this;
    }

    public function getDelivery(): ?bool
    {
        return $this->delivery;
    }

    public function setDelivery(?bool $delivery): self
    {
        $this->delivery = $delivery;

        return $this;
    }

    public function getBabySitting(): ?bool
    {
        return $this->babySitting;
    }

    public function setBabySitting(?bool $babySitting): self
    {
        $this->babySitting = $babySitting;

        return $this;
    }

    public function getNote(): ?string
    {
        return $this->note;
    }

    public function setNote(?string $note): self
    {
        $this->note = $note;

        return $this;
    }

    public function getAvailability(): ?Availability
    {
        return $this->availability;
    }

    public function setAvailability(Availability $availability): self
    {
        $this->availability = $availability;

        return $this;
    }

    /**
     * Get the value of availabilityForm
     */ 
    public function getAvailabilityForm()
    {
        return $this->availabilityForm;
    }


    /**
     * Get the value of drugDelivery
     */ 
    public function getDrugDelivery()
    {
        return $this->drugDelivery;
    }

    /**
     * Set the value of drugDelivery
     *
     * @return  self
     */ 
    public function setDrugDelivery($drugDelivery)
    {
        $this->drugDelivery = $drugDelivery;

        return $this;
    }

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }
}
