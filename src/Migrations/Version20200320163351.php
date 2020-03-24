<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200320163351 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE availability (id INT AUTO_INCREMENT NOT NULL, day_of_the_week LONGTEXT NOT NULL COMMENT \'(DC2Type:array)\', start LONGTEXT NOT NULL COMMENT \'(DC2Type:array)\', end LONGTEXT NOT NULL COMMENT \'(DC2Type:array)\', PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE volunteer (id INT AUTO_INCREMENT NOT NULL, country_id INT NOT NULL, availability_id INT NOT NULL, lastname VARCHAR(100) NOT NULL, name VARCHAR(100) NOT NULL, birthday DATE NOT NULL, address VARCHAR(255) NOT NULL, zipcode VARCHAR(5) DEFAULT NULL, city VARCHAR(100) NOT NULL, phone VARCHAR(20) NOT NULL, email VARCHAR(100) NOT NULL, car_owner TINYINT(1) DEFAULT NULL, inception DATETIME NOT NULL, expiry DATETIME NOT NULL, delivery TINYINT(1) DEFAULT NULL, baby_sitting TINYINT(1) DEFAULT NULL, note VARCHAR(255) DEFAULT NULL, INDEX IDX_5140DEDBF92F3E70 (country_id), UNIQUE INDEX UNIQ_5140DEDB61778466 (availability_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE volunteer ADD CONSTRAINT FK_5140DEDBF92F3E70 FOREIGN KEY (country_id) REFERENCES country (id)');
        $this->addSql('ALTER TABLE volunteer ADD CONSTRAINT FK_5140DEDB61778466 FOREIGN KEY (availability_id) REFERENCES availability (id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE volunteer DROP FOREIGN KEY FK_5140DEDB61778466');
        $this->addSql('DROP TABLE availability');
        $this->addSql('DROP TABLE volunteer');
    }
}
