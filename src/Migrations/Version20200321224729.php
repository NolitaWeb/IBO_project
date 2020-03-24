<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200321224729 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE volunteer ADD drug_delivery TINYINT(1) DEFAULT NULL');
        $this->addSql('ALTER TABLE availability DROP mondayend, DROP thuesdayend, DROP wednesdayend, DROP thursdayend, DROP fridayend, DROP saturdayend, DROP sundayend, CHANGE mondaystart mondaystart VARCHAR(255) NOT NULL, CHANGE thuesdaystart thuesdaystart VARCHAR(255) NOT NULL, CHANGE wednesdaystart wednesdaystart VARCHAR(255) NOT NULL, CHANGE thursdaystart thursdaystart VARCHAR(255) NOT NULL, CHANGE fridaystart fridaystart VARCHAR(255) NOT NULL, CHANGE saturdaystart saturdaystart VARCHAR(255) NOT NULL, CHANGE sundaystart sundaystart VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE availability ADD mondayend TIME NOT NULL, ADD thuesdayend TIME NOT NULL, ADD wednesdayend TIME NOT NULL, ADD thursdayend TIME NOT NULL, ADD fridayend TIME NOT NULL, ADD saturdayend TIME NOT NULL, ADD sundayend TIME NOT NULL, CHANGE mondaystart mondaystart TIME NOT NULL, CHANGE thuesdaystart thuesdaystart TIME NOT NULL, CHANGE wednesdaystart wednesdaystart TIME NOT NULL, CHANGE thursdaystart thursdaystart TIME NOT NULL, CHANGE fridaystart fridaystart TIME NOT NULL, CHANGE saturdaystart saturdaystart TIME NOT NULL, CHANGE sundaystart sundaystart TIME NOT NULL');
        $this->addSql('ALTER TABLE volunteer DROP drug_delivery');
    }
}
