CREATE TABLE IF NOT EXISTS `dbaraqua`.`localidade_superficial` (
  `id` INT(5) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(100) NOT NULL,
  `DeclividadeTerreno` DOUBLE NOT NULL,
  `InterceptacaoPelasPlantas` DOUBLE NOT NULL,
  `LarguraFaixaContencao` DOUBLE NOT NULL,
  `CoeficienteEscoamento` DOUBLE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;

