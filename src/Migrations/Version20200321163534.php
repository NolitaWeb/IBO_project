<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200321163534 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE availability ADD monday TINYINT(1) NOT NULL, ADD mondaystart TIME NOT NULL, ADD mondayend TIME NOT NULL, ADD thuesday TINYINT(1) NOT NULL, ADD thuesdaystart TIME NOT NULL, ADD thuesdayend TIME NOT NULL, ADD wednesday TINYINT(1) NOT NULL, ADD wednesdaystart TIME NOT NULL, ADD wednesdayend TIME NOT NULL, ADD thursday TINYINT(1) NOT NULL, ADD thursdaystart TIME NOT NULL, ADD thursdayend TIME NOT NULL, ADD friday TINYINT(1) NOT NULL, ADD fridaystart TIME NOT NULL, ADD fridayend TIME NOT NULL, ADD saturday TINYINT(1) NOT NULL, ADD saturdaystart TIME NOT NULL, ADD saturdayend TIME NOT NULL, ADD sunday TINYINT(1) NOT NULL, ADD sundaystart TIME NOT NULL, ADD sundayend TIME NOT NULL, DROP day_of_the_week, DROP start, DROP end');
        $this->addSql('ALTER TABLE volunteer CHANGE note note VARCHAR(2550) DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE availability ADD day_of_the_week LONGTEXT CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci` COMMENT \'(DC2Type:array)\', ADD start LONGTEXT CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci` COMMENT \'(DC2Type:array)\', ADD end LONGTEXT CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci` COMMENT \'(DC2Type:array)\', DROP monday, DROP mondaystart, DROP mondayend, DROP thuesday, DROP thuesdaystart, DROP thuesdayend, DROP wednesday, DROP wednesdaystart, DROP wednesdayend, DROP thursday, DROP thursdaystart, DROP thursdayend, DROP friday, DROP fridaystart, DROP fridayend, DROP saturday, DROP saturdaystart, DROP saturdayend, DROP sunday, DROP sundaystart, DROP sundayend');
        $this->addSql('ALTER TABLE volunteer CHANGE note note VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_unicode_ci`');
    }
}
