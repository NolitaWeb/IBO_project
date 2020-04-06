<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\AvailabilityRepository")
 */
class Availability
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer", nullable=true)
     */
    private $id;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $monday;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $mondaystart;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $thuesday;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $thuesdaystart;


    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $wednesday;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $wednesdaystart;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $thursday;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $thursdaystart;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $friday;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $fridaystart;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $saturday;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $saturdaystart;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $sunday;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $sundaystart;


    /**
     * Get the value of monday
     */ 
    public function getMonday()
    {
        return $this->monday;
    }

    /**
     * Set the value of monday
     *
     * @return  self
     */ 
    public function setMonday($monday)
    {
        $this->monday = $monday;

        return $this;
    }

    /**
     * Get the value of mondaystart
     */ 
    public function getMondaystart()
    {
        return $this->mondaystart;
    }

    /**
     * Set the value of mondaystart
     *
     * @return  self
     */ 
    public function setMondaystart($mondaystart)
    {
        $this->mondaystart = $mondaystart;

        return $this;
    }

    /**
     * Get the value of thuesday
     */ 
    public function getThuesday()
    {
        return $this->thuesday;
    }

    /**
     * Set the value of thuesday
     *
     * @return  self
     */ 
    public function setThuesday($thuesday)
    {
        $this->thuesday = $thuesday;

        return $this;
    }

    /**
     * Get the value of thuesdaystart
     */ 
    public function getThuesdaystart()
    {
        return $this->thuesdaystart;
    }

    /**
     * Set the value of thuesdaystart
     *
     * @return  self
     */ 
    public function setThuesdaystart($thuesdaystart)
    {
        $this->thuesdaystart = $thuesdaystart;

        return $this;
    }

    /**
     * Get the value of wednesday
     */ 
    public function getWednesday()
    {
        return $this->wednesday;
    }

    /**
     * Set the value of wednesday
     *
     * @return  self
     */ 
    public function setWednesday($wednesday)
    {
        $this->wednesday = $wednesday;

        return $this;
    }

    /**
     * Get the value of wednesdaystart
     */ 
    public function getWednesdaystart()
    {
        return $this->wednesdaystart;
    }

    /**
     * Set the value of wednesdaystart
     *
     * @return  self
     */ 
    public function setWednesdaystart($wednesdaystart)
    {
        $this->wednesdaystart = $wednesdaystart;

        return $this;
    }

    /**
     * Get the value of thursday
     */ 
    public function getThursday()
    {
        return $this->thursday;
    }

    /**
     * Set the value of thursday
     *
     * @return  self
     */ 
    public function setThursday($thursday)
    {
        $this->thursday = $thursday;

        return $this;
    }

    /**
     * Get the value of thursdaystart
     */ 
    public function getThursdaystart()
    {
        return $this->thursdaystart;
    }

    /**
     * Set the value of thursdaystart
     *
     * @return  self
     */ 
    public function setThursdaystart($thursdaystart)
    {
        $this->thursdaystart = $thursdaystart;

        return $this;
    }


    /**
     * Get the value of friday
     */ 
    public function getFriday()
    {
        return $this->friday;
    }

    /**
     * Set the value of friday
     *
     * @return  self
     */ 
    public function setFriday($friday)
    {
        $this->friday = $friday;

        return $this;
    }

    /**
     * Get the value of fridaystart
     */ 
    public function getFridaystart()
    {
        return $this->fridaystart;
    }

    /**
     * Set the value of fridaystart
     *
     * @return  self
     */ 
    public function setFridaystart($fridaystart)
    {
        $this->fridaystart = $fridaystart;

        return $this;
    }

    /**
     * Get the value of saturday
     */ 
    public function getSaturday()
    {
        return $this->saturday;
    }

    /**
     * Set the value of saturday
     *
     * @return  self
     */ 
    public function setSaturday($saturday)
    {
        $this->saturday = $saturday;

        return $this;
    }

    /**
     * Get the value of saturdaystart
     */ 
    public function getSaturdaystart()
    {
        return $this->saturdaystart;
    }

    /**
     * Set the value of saturdaystart
     *
     * @return  self
     */ 
    public function setSaturdaystart($saturdaystart)
    {
        $this->saturdaystart = $saturdaystart;

        return $this;
    }

    /**
     * Get the value of sunday
     */ 
    public function getSunday()
    {
        return $this->sunday;
    }

    /**
     * Set the value of sunday
     *
     * @return  self
     */ 
    public function setSunday($sunday)
    {
        $this->sunday = $sunday;

        return $this;
    }

    /**
     * Get the value of sundaystart
     */ 
    public function getSundaystart()
    {
        return $this->sundaystart;
    }

    /**
     * Set the value of sundaystart
     *
     * @return  self
     */ 
    public function setSundaystart($sundaystart)
    {
        $this->sundaystart = $sundaystart;

        return $this;
    }

}
