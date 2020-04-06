<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200323124359 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE availability CHANGE monday monday TINYINT(1) DEFAULT NULL, CHANGE mondaystart mondaystart INT DEFAULT NULL, CHANGE thuesday thuesday TINYINT(1) DEFAULT NULL, CHANGE thuesdaystart thuesdaystart INT DEFAULT NULL, CHANGE wednesday wednesday TINYINT(1) DEFAULT NULL, CHANGE wednesdaystart wednesdaystart INT DEFAULT NULL, CHANGE thursday thursday TINYINT(1) DEFAULT NULL, CHANGE thursdaystart thursdaystart INT DEFAULT NULL, CHANGE friday friday TINYINT(1) DEFAULT NULL, CHANGE fridaystart fridaystart INT DEFAULT NULL, CHANGE saturday saturday TINYINT(1) DEFAULT NULL, CHANGE saturdaystart saturdaystart INT DEFAULT NULL, CHANGE sunday sunday TINYINT(1) DEFAULT NULL, CHANGE sundaystart sundaystart INT DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE availability CHANGE monday monday TINYINT(1) NOT NULL, CHANGE mondaystart mondaystart VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE thuesday thuesday TINYINT(1) NOT NULL, CHANGE thuesdaystart thuesdaystart VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE wednesday wednesday TINYINT(1) NOT NULL, CHANGE wednesdaystart wednesdaystart VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE thursday thursday TINYINT(1) NOT NULL, CHANGE thursdaystart thursdaystart VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE friday friday TINYINT(1) NOT NULL, CHANGE fridaystart fridaystart VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE saturday saturday TINYINT(1) NOT NULL, CHANGE saturdaystart saturdaystart VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE sunday sunday TINYINT(1) NOT NULL, CHANGE sundaystart sundaystart VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`');
    }
}
