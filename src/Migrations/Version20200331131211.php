<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200331131211 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE shop ADD shop_type_id INT NOT NULL, ADD country_id INT NOT NULL, ADD address VARCHAR(255) NOT NULL, ADD municipality VARCHAR(50) DEFAULT NULL, ADD phone VARCHAR(20) DEFAULT NULL, ADD note VARCHAR(20) DEFAULT NULL');
        $this->addSql('ALTER TABLE shop ADD CONSTRAINT FK_AC6A4CA2C67FCCB9 FOREIGN KEY (shop_type_id) REFERENCES shop_type (id)');
        $this->addSql('ALTER TABLE shop ADD CONSTRAINT FK_AC6A4CA2F92F3E70 FOREIGN KEY (country_id) REFERENCES country (id)');
        $this->addSql('CREATE INDEX IDX_AC6A4CA2C67FCCB9 ON shop (shop_type_id)');
        $this->addSql('CREATE INDEX IDX_AC6A4CA2F92F3E70 ON shop (country_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE shop DROP FOREIGN KEY FK_AC6A4CA2C67FCCB9');
        $this->addSql('ALTER TABLE shop DROP FOREIGN KEY FK_AC6A4CA2F92F3E70');
        $this->addSql('DROP INDEX IDX_AC6A4CA2C67FCCB9 ON shop');
        $this->addSql('DROP INDEX IDX_AC6A4CA2F92F3E70 ON shop');
        $this->addSql('ALTER TABLE shop DROP shop_type_id, DROP country_id, DROP address, DROP municipality, DROP phone, DROP note');
    }
}
