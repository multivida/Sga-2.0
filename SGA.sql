-- Adminer 4.8.0 MySQL 8.0.26-0ubuntu0.20.04.2 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `novosga_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `novosga_db`;

DROP TABLE IF EXISTS `agendamentos`;
CREATE TABLE `agendamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `unidade_id` int DEFAULT NULL,
  `servico_id` int DEFAULT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `data_confirmacao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2D12EA4ADE734E51` (`cliente_id`),
  KEY `IDX_2D12EA4AEDF4B99B` (`unidade_id`),
  KEY `IDX_2D12EA4A82E14982` (`servico_id`),
  CONSTRAINT `FK_2D12EA4A82E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  CONSTRAINT `FK_2D12EA4ADE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `FK_2D12EA4AEDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atendimentos`;
CREATE TABLE `atendimentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `unidade_id` int DEFAULT NULL,
  `servico_id` int DEFAULT NULL,
  `prioridade_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `usuario_tri_id` int DEFAULT NULL,
  `atendimento_id` int DEFAULT NULL,
  `num_local` smallint DEFAULT NULL,
  `dt_age` datetime DEFAULT NULL,
  `dt_cheg` datetime NOT NULL,
  `dt_cha` datetime DEFAULT NULL,
  `dt_ini` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `tempo_espera` int DEFAULT NULL,
  `tempo_permanencia` int DEFAULT NULL,
  `tempo_atendimento` int DEFAULT NULL,
  `tempo_deslocamento` int DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `resolucao` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observacao` longtext COLLATE utf8_unicode_ci,
  `senha_sigla` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `senha_numero` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_29E906E7DE734E51` (`cliente_id`),
  KEY `IDX_29E906E7EDF4B99B` (`unidade_id`),
  KEY `IDX_29E906E782E14982` (`servico_id`),
  KEY `IDX_29E906E7226EFC79` (`prioridade_id`),
  KEY `IDX_29E906E7DB38439E` (`usuario_id`),
  KEY `IDX_29E906E7875F1A79` (`usuario_tri_id`),
  KEY `IDX_29E906E776323123` (`atendimento_id`),
  CONSTRAINT `FK_29E906E7226EFC79` FOREIGN KEY (`prioridade_id`) REFERENCES `prioridades` (`id`),
  CONSTRAINT `FK_29E906E776323123` FOREIGN KEY (`atendimento_id`) REFERENCES `atendimentos` (`id`),
  CONSTRAINT `FK_29E906E782E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  CONSTRAINT `FK_29E906E7875F1A79` FOREIGN KEY (`usuario_tri_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK_29E906E7DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK_29E906E7DE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `FK_29E906E7EDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `atendimentos` (`id`, `cliente_id`, `unidade_id`, `servico_id`, `prioridade_id`, `usuario_id`, `usuario_tri_id`, `atendimento_id`, `num_local`, `dt_age`, `dt_cheg`, `dt_cha`, `dt_ini`, `dt_fim`, `tempo_espera`, `tempo_permanencia`, `tempo_atendimento`, `tempo_deslocamento`, `status`, `resolucao`, `observacao`, `senha_sigla`, `senha_numero`) VALUES
(1,	NULL,	1,	3,	1,	3,	1,	NULL,	2,	NULL,	'2021-09-14 23:03:01',	'2021-09-14 23:27:52',	NULL,	'2021-09-14 23:28:38',	1491,	1537,	0,	0,	'nao_compareceu',	NULL,	NULL,	'A',	1),
(2,	NULL,	1,	3,	1,	3,	2,	NULL,	2,	NULL,	'2021-09-14 23:03:30',	'2021-09-14 23:28:40',	'2021-09-15 19:35:46',	'2021-09-15 19:36:04',	1510,	73954,	18,	72426,	'encerrado',	NULL,	NULL,	'A',	2),
(3,	NULL,	1,	1,	1,	1,	2,	NULL,	3,	NULL,	'2021-09-14 23:03:31',	'2021-09-14 23:55:26',	'2021-09-15 19:45:07',	'2021-09-15 19:45:15',	3115,	74504,	8,	71381,	'encerrado',	NULL,	NULL,	'C',	1),
(4,	NULL,	1,	1,	1,	3,	2,	NULL,	2,	NULL,	'2021-09-14 23:03:31',	'2021-09-15 19:36:09',	'2021-09-15 19:36:12',	'2021-09-15 19:36:23',	73958,	73972,	11,	3,	'encerrado',	NULL,	NULL,	'C',	2),
(5,	NULL,	1,	1,	1,	3,	2,	NULL,	2,	NULL,	'2021-09-14 23:03:32',	'2021-09-15 19:36:27',	NULL,	NULL,	73975,	NULL,	NULL,	NULL,	'chamado',	NULL,	NULL,	'C',	3),
(6,	NULL,	1,	1,	1,	1,	2,	NULL,	3,	NULL,	'2021-09-14 23:03:32',	'2021-09-15 19:45:20',	'2021-09-15 19:46:02',	'2021-09-15 19:46:13',	74508,	74561,	11,	42,	'encerrado',	NULL,	NULL,	'C',	4),
(7,	NULL,	1,	1,	1,	1,	2,	NULL,	3,	NULL,	'2021-09-14 23:03:33',	'2021-09-15 19:46:16',	'2021-09-15 19:46:30',	'2021-09-15 19:46:48',	74563,	74595,	18,	14,	'encerrado',	NULL,	NULL,	'C',	5),
(8,	NULL,	1,	1,	1,	1,	2,	NULL,	3,	NULL,	'2021-09-14 23:03:33',	'2021-09-15 19:47:00',	'2021-09-15 19:47:17',	'2021-09-15 19:47:26',	74607,	74633,	9,	17,	'encerrado',	NULL,	NULL,	'C',	6),
(9,	NULL,	1,	3,	1,	1,	2,	NULL,	3,	NULL,	'2021-09-14 23:03:33',	'2021-09-15 19:47:29',	'2021-09-15 19:47:41',	'2021-09-15 19:48:00',	74636,	74667,	19,	12,	'encerrado',	NULL,	NULL,	'A',	3),
(10,	NULL,	1,	4,	1,	1,	2,	NULL,	3,	NULL,	'2021-09-14 23:03:34',	'2021-09-15 19:48:03',	'2021-09-15 19:48:24',	'2021-09-15 19:48:28',	74669,	74694,	4,	21,	'encerrado',	NULL,	NULL,	'B',	1),
(11,	NULL,	1,	4,	1,	1,	2,	NULL,	3,	NULL,	'2021-09-14 23:03:35',	'2021-09-15 19:48:32',	'2021-09-16 20:27:58',	'2021-09-16 20:28:06',	74697,	163471,	8,	88766,	'encerrado',	NULL,	NULL,	'B',	2),
(12,	NULL,	1,	4,	1,	1,	2,	NULL,	3,	NULL,	'2021-09-14 23:03:35',	'2021-09-16 20:28:55',	'2021-09-16 20:28:57',	'2021-09-16 20:29:53',	163520,	163578,	56,	2,	'encerrado',	NULL,	NULL,	'B',	3),
(13,	NULL,	1,	4,	1,	1,	2,	NULL,	3,	NULL,	'2021-09-14 23:03:36',	'2021-09-16 20:30:03',	'2021-09-16 20:55:59',	NULL,	163587,	NULL,	NULL,	1556,	'iniciado',	NULL,	NULL,	'B',	4),
(14,	NULL,	1,	4,	1,	NULL,	2,	NULL,	NULL,	NULL,	'2021-09-14 23:03:51',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'emitida',	NULL,	NULL,	'B',	5),
(15,	NULL,	1,	3,	1,	NULL,	2,	NULL,	NULL,	NULL,	'2021-09-14 23:03:51',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'emitida',	NULL,	NULL,	'A',	4),
(16,	NULL,	1,	1,	2,	3,	2,	NULL,	2,	NULL,	'2021-09-14 23:03:52',	'2021-09-14 23:06:44',	'2021-09-14 23:27:04',	'2021-09-14 23:27:51',	172,	1439,	47,	1220,	'encerrado',	NULL,	NULL,	'C',	7),
(17,	NULL,	1,	3,	1,	NULL,	2,	NULL,	NULL,	NULL,	'2021-09-14 23:03:52',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'emitida',	NULL,	NULL,	'A',	5),
(18,	NULL,	1,	1,	1,	NULL,	2,	NULL,	NULL,	NULL,	'2021-09-14 23:03:52',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'emitida',	NULL,	NULL,	'C',	8),
(19,	NULL,	1,	3,	2,	1,	2,	NULL,	3,	NULL,	'2021-09-14 23:03:53',	'2021-09-14 23:06:54',	'2021-09-14 23:06:56',	'2021-09-14 23:07:03',	181,	190,	7,	2,	'encerrado',	'resolvido',	NULL,	'A',	6),
(20,	1,	1,	3,	1,	NULL,	3,	NULL,	NULL,	NULL,	'2021-09-14 23:05:43',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'emitida',	NULL,	NULL,	'A',	7),
(21,	NULL,	1,	3,	2,	2,	1,	NULL,	1,	NULL,	'2021-09-14 23:11:48',	'2021-09-14 23:17:06',	NULL,	NULL,	318,	NULL,	NULL,	NULL,	'chamado',	NULL,	NULL,	'A',	8),
(22,	NULL,	1,	4,	1,	NULL,	1,	NULL,	NULL,	NULL,	'2021-09-14 23:22:01',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'emitida',	NULL,	NULL,	'B',	6),
(23,	NULL,	1,	3,	1,	NULL,	1,	NULL,	NULL,	NULL,	'2021-09-14 23:22:23',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'emitida',	NULL,	NULL,	'A',	9),
(24,	NULL,	1,	4,	1,	NULL,	1,	NULL,	NULL,	NULL,	'2021-09-16 20:25:21',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'emitida',	NULL,	NULL,	'B',	7),
(25,	NULL,	1,	3,	1,	NULL,	1,	NULL,	NULL,	NULL,	'2021-09-16 20:25:55',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'emitida',	NULL,	NULL,	'A',	10),
(26,	NULL,	1,	1,	2,	1,	1,	NULL,	3,	NULL,	'2021-09-16 20:26:54',	'2021-09-16 20:28:09',	'2021-09-16 20:28:11',	'2021-09-16 20:28:48',	75,	114,	37,	2,	'encerrado',	NULL,	NULL,	'C',	9),
(27,	NULL,	1,	3,	1,	NULL,	1,	NULL,	NULL,	NULL,	'2021-09-19 14:29:20',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'emitida',	NULL,	NULL,	'A',	11);

DROP TABLE IF EXISTS `atendimentos_codificados`;
CREATE TABLE `atendimentos_codificados` (
  `servico_id` int NOT NULL,
  `atendimento_id` int NOT NULL,
  `valor_peso` smallint NOT NULL,
  PRIMARY KEY (`servico_id`,`atendimento_id`),
  KEY `IDX_DDF47B2D82E14982` (`servico_id`),
  KEY `IDX_DDF47B2D76323123` (`atendimento_id`),
  CONSTRAINT `FK_DDF47B2D76323123` FOREIGN KEY (`atendimento_id`) REFERENCES `atendimentos` (`id`),
  CONSTRAINT `FK_DDF47B2D82E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `atendimentos_codificados` (`servico_id`, `atendimento_id`, `valor_peso`) VALUES
(2,	2,	1),
(2,	4,	1),
(2,	6,	1),
(2,	8,	1),
(2,	9,	1),
(2,	11,	1),
(2,	16,	1),
(3,	2,	1),
(3,	3,	1),
(3,	4,	1),
(3,	6,	1),
(3,	7,	1),
(3,	9,	1),
(3,	10,	1),
(3,	11,	1),
(3,	12,	1),
(3,	16,	1),
(3,	19,	1),
(3,	26,	1),
(4,	2,	1),
(4,	3,	1),
(4,	4,	1),
(4,	6,	1),
(4,	9,	1),
(4,	11,	1),
(4,	16,	1);

DROP TABLE IF EXISTS `atendimentos_metadata`;
CREATE TABLE `atendimentos_metadata` (
  `namespace` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `atendimento_id` int NOT NULL,
  `value` json NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`namespace`,`name`,`atendimento_id`),
  KEY `IDX_4F7723EB76323123` (`atendimento_id`),
  CONSTRAINT `FK_4F7723EB76323123` FOREIGN KEY (`atendimento_id`) REFERENCES `atendimentos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `documento` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `clientes` (`id`, `nome`, `documento`, `email`) VALUES
(1,	'joaqo',	'091154654',	NULL);

DROP TABLE IF EXISTS `clientes_metadata`;
CREATE TABLE `clientes_metadata` (
  `namespace` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cliente_id` int NOT NULL,
  `value` json NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`namespace`,`name`,`cliente_id`),
  KEY `IDX_23B81DEEDE734E51` (`cliente_id`),
  CONSTRAINT `FK_23B81DEEDE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `contador`;
CREATE TABLE `contador` (
  `unidade_id` int NOT NULL,
  `servico_id` int NOT NULL,
  `numero` int DEFAULT NULL,
  PRIMARY KEY (`unidade_id`,`servico_id`),
  KEY `IDX_E83EF8FAEDF4B99B` (`unidade_id`),
  KEY `IDX_E83EF8FA82E14982` (`servico_id`),
  CONSTRAINT `FK_E83EF8FA82E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  CONSTRAINT `FK_E83EF8FAEDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `contador` (`unidade_id`, `servico_id`, `numero`) VALUES
(1,	1,	10),
(1,	3,	12),
(1,	4,	8);

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `departamentos` (`id`, `nome`, `descricao`, `ativo`, `created_at`, `updated_at`) VALUES
(1,	'Wep Sistemas',	'Departamento WepSystens',	1,	'2021-09-14 21:55:14',	'2021-09-14 22:53:45');

DROP TABLE IF EXISTS `historico_atendimentos`;
CREATE TABLE `historico_atendimentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `unidade_id` int DEFAULT NULL,
  `servico_id` int DEFAULT NULL,
  `prioridade_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `usuario_tri_id` int DEFAULT NULL,
  `atendimento_id` int DEFAULT NULL,
  `num_local` smallint DEFAULT NULL,
  `dt_age` datetime DEFAULT NULL,
  `dt_cheg` datetime NOT NULL,
  `dt_cha` datetime DEFAULT NULL,
  `dt_ini` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `tempo_espera` int DEFAULT NULL,
  `tempo_permanencia` int DEFAULT NULL,
  `tempo_atendimento` int DEFAULT NULL,
  `tempo_deslocamento` int DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `resolucao` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observacao` longtext COLLATE utf8_unicode_ci,
  `senha_sigla` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `senha_numero` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CBBDF95FDE734E51` (`cliente_id`),
  KEY `IDX_CBBDF95FEDF4B99B` (`unidade_id`),
  KEY `IDX_CBBDF95F82E14982` (`servico_id`),
  KEY `IDX_CBBDF95F226EFC79` (`prioridade_id`),
  KEY `IDX_CBBDF95FDB38439E` (`usuario_id`),
  KEY `IDX_CBBDF95F875F1A79` (`usuario_tri_id`),
  KEY `IDX_CBBDF95F76323123` (`atendimento_id`),
  CONSTRAINT `FK_CBBDF95F226EFC79` FOREIGN KEY (`prioridade_id`) REFERENCES `prioridades` (`id`),
  CONSTRAINT `FK_CBBDF95F76323123` FOREIGN KEY (`atendimento_id`) REFERENCES `atendimentos` (`id`),
  CONSTRAINT `FK_CBBDF95F82E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  CONSTRAINT `FK_CBBDF95F875F1A79` FOREIGN KEY (`usuario_tri_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK_CBBDF95FDB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK_CBBDF95FDE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `FK_CBBDF95FEDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `historico_atendimentos_codificados`;
CREATE TABLE `historico_atendimentos_codificados` (
  `servico_id` int NOT NULL,
  `atendimento_id` int NOT NULL,
  `valor_peso` smallint NOT NULL,
  PRIMARY KEY (`servico_id`,`atendimento_id`),
  KEY `IDX_111248C282E14982` (`servico_id`),
  KEY `IDX_111248C276323123` (`atendimento_id`),
  CONSTRAINT `FK_111248C276323123` FOREIGN KEY (`atendimento_id`) REFERENCES `historico_atendimentos` (`id`),
  CONSTRAINT `FK_111248C282E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `historico_atendimentos_metadata`;
CREATE TABLE `historico_atendimentos_metadata` (
  `namespace` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `atendimento_id` int NOT NULL,
  `value` json NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`namespace`,`name`,`atendimento_id`),
  KEY `IDX_169630A576323123` (`atendimento_id`),
  CONSTRAINT `FK_169630A576323123` FOREIGN KEY (`atendimento_id`) REFERENCES `historico_atendimentos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `locais`;
CREATE TABLE `locais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C823878C54BD530C` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `locais` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1,	'Guichê 1',	'2021-09-14 21:42:14',	'2021-09-14 22:58:46'),
(2,	'Guichê 2',	'2021-09-14 21:55:28',	'2021-09-14 22:58:57');

DROP TABLE IF EXISTS `lotacoes`;
CREATE TABLE `lotacoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `unidade_id` int DEFAULT NULL,
  `perfil_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lotacao_usuario_unidade_idx` (`usuario_id`,`unidade_id`),
  KEY `IDX_10E72C2FDB38439E` (`usuario_id`),
  KEY `IDX_10E72C2FEDF4B99B` (`unidade_id`),
  KEY `IDX_10E72C2F57291544` (`perfil_id`),
  CONSTRAINT `FK_10E72C2F57291544` FOREIGN KEY (`perfil_id`) REFERENCES `perfis` (`id`),
  CONSTRAINT `FK_10E72C2FDB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK_10E72C2FEDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `lotacoes` (`id`, `usuario_id`, `unidade_id`, `perfil_id`) VALUES
(1,	1,	1,	1),
(2,	2,	1,	1),
(3,	3,	1,	1);

DROP TABLE IF EXISTS `metadata`;
CREATE TABLE `metadata` (
  `namespace` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` json NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`namespace`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `migration_versions` (`version`) VALUES
('1');

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CA42527C5F37A13B` (`token`),
  KEY `IDX_CA42527C19EB6921` (`client_id`),
  KEY `IDX_CA42527CA76ED395` (`user_id`),
  CONSTRAINT `FK_CA42527C19EB6921` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`),
  CONSTRAINT `FK_CA42527CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `oauth_access_tokens` (`id`, `client_id`, `user_id`, `token`, `expires_at`, `scope`) VALUES
(1,	2,	1,	'YWI1NDYxMDI3YTUyNjRjOGVhMmE3NzkxNjc0YTJkZjRhNDI2NDYzOGY5YWY5MDU2NjU1NDRjOWM0ZTk5YzI1Mg',	1631672598,	NULL),
(2,	2,	1,	'NWM3NTc4YTFiZTYzMTg0YjU2MmQzZDU2MmE3YTAxOTIwMGI2MjMxNzRjMWE4ZTIzNWE1MjY4YmFlNzNhMjE4YQ',	1631673946,	NULL),
(3,	2,	1,	'NmM3NTc2NTY4MjQxODcxOTE2MWU5NDUyZTQyZmUzYmM4ZTA3NDBmNDJjNTVmNGRlMzdjMjg1ZDA2YWQ0ZjU2Yg',	1631675431,	NULL),
(4,	2,	1,	'YzFlZjYxYmRjZjM5Mjc5ZGM0M2E3M2M1N2RhNmUwZGE3N2NlY2QxODA2Y2VmMmM3YzM0NzE1ZjZiNzY5ZWVjOQ',	1631675747,	NULL),
(5,	2,	1,	'N2IyZWQ1MGMyMjdjODNlZTc1MTVhYTM5NTY1MWRkOWViMGNiZWI5YTBhMGQ4Y2ZlOWVjNzRkZTIxZGNkMTdkZQ',	1631676303,	NULL),
(6,	2,	1,	'Y2JhMjk5OWY4M2U4OWE5MmViMmNiZDJjNzUyNzhjZWZmYWEwZjVjYWM1MWViNmIxOTkyODJmMjYxZDlmZjk3OQ',	1631676331,	NULL),
(7,	2,	1,	'YmE1ZGM0ZWZkOWFkMWYzMDU5MTQyZWUyNTM0YmZjYjk5N2Y3NmQzM2E2ZDc5Yzk3MDVkN2QzOTE4NGY5Y2I4Mw',	1631748920,	NULL),
(8,	2,	1,	'ZGFlNGE1MzJhZGJhMmEzMWU2NGY2NTBkMThjNjc0ZjMyM2RjMzAzOGE2ODI4NmY5Mjc1MjU1Y2YxNGI0NzMzYQ',	1631749423,	NULL),
(9,	2,	1,	'YTA4MTQ3YThlNGM3ODUxYWQzYzkyNzY4MGIyODY0ZDNjNWY2ODIxMmRiZWU2MjJjODQ3MzNiODRjNWQ1MDNhOA',	1631838000,	NULL),
(10,	2,	1,	'MTRiOGEyYWIzNzJiM2YyMWY0OTBhYWRhZTk4M2VkMmFlZTZhY2RmZWNlOWFlZWNiY2I5NzQ3N2M1MGQ3ZTBlYQ',	1631838252,	NULL),
(11,	2,	1,	'ZGQ2ZGFiNDliOWFkMjEzYjZmM2ZjYWVmNzNlNDYyODAzZWUwNjAxM2I0ZmYyNjkxNTFkOTllZWJhNDZjNjc0Zg',	1632091372,	NULL),
(12,	2,	1,	'YTZmNWQyM2ZlYmQ5MDRjMDE0ZjE5OGExYjIzNGQ1ZmM3MGIwNDQ2MmI0MjVlYzA3MGI0YzY5YmRiOGNhYzc3MA',	1632272689,	NULL);

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `oauth_clients` (`id`, `random_id`, `redirect_uris`, `secret`, `allowed_grant_types`, `description`) VALUES
(2,	'1dz7j2adjiu8g4c4kwok04oo0g4gogkg00s0ow00gs484s0k04',	'a:0:{}',	'5752ti8yt10csg8w480g0ow4c0gogog8wg08g048k4404k0s4s',	'a:3:{i:0;s:5:\"token\";i:1;s:8:\"password\";i:2;s:13:\"refresh_token\";}',	'webtela');

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5AB6875F37A13B` (`token`),
  KEY `IDX_5AB68719EB6921` (`client_id`),
  KEY `IDX_5AB687A76ED395` (`user_id`),
  CONSTRAINT `FK_5AB68719EB6921` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`),
  CONSTRAINT `FK_5AB687A76ED395` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `oauth_refresh_tokens` (`id`, `client_id`, `user_id`, `token`, `expires_at`, `scope`) VALUES
(1,	2,	1,	'NWRhZjBiMTZiYTRmNzRjZDgzNDE1ODRjNmFlZTkxYzhhYTA2MmU2NDkxMWNjOTk1ZWQzNWJjMTYxNTgyNzEwZQ',	1632878598,	NULL),
(2,	2,	1,	'NjM0ZDEwOTdkNzFmZjNlNzQ1NDM2ZmZmZTg2MTdjNWJlZGFkYzFjYWY4ZTZmMjg2MGNiZGJjZTg5ZTAzZmMxNA',	1632879946,	NULL),
(3,	2,	1,	'YTM5YWIzNzY0Yjg2ZTE4MWQxZGQzNjVkZTFhZGEwN2EwODVhZDM0MmZjMGQ2YjE5ODkyODYxOWRlMDY1MGY1NA',	1632881431,	NULL),
(4,	2,	1,	'NmEzYWRkYjg1NmYwYjc3ZWRkYzRjOWRhMTJiNmU3NzQ2NDZhODlhM2I3MTY1Mzk3MmQ5YTQzMDgwOWZiZmE3OA',	1632881747,	NULL),
(5,	2,	1,	'ZDQwYWU2NjdjZjNiMDFhMTVjOWE4NmVhZjU5NGJlMTlmYWJmNTFkYjY4MTU4ZmM0N2U2M2I1YzAyZmI1YzQwNw',	1632882303,	NULL),
(6,	2,	1,	'ZmMyY2FjZGEzNmE5MWFmMzM2ZThmMDkwYmY5NTliYjlkMTQ1MDhmNDhmMjc1YzllYWJmY2NmNDBiYzU5NWQ3NQ',	1632882331,	NULL),
(7,	2,	1,	'ZDUxOTNiY2I0ZDNlMGI3OGE3ZGFjN2IwOGRlZDg2NzIwNDM5N2MyOWZkOTI1NWQ2MTUwOTIxMmIyNDMyOGY3Yg',	1632954920,	NULL),
(8,	2,	1,	'MjBiM2M3N2MxYmUwZjA2NmI0MjhiZjM0ZDc3YzBiNjM1ZDNjZmM5YmNhOTk4YTlkY2RmZDMyNjgyM2IxZDEyZg',	1632955423,	NULL),
(9,	2,	1,	'MTZhZTM1MjU3NjZiOTVjY2NiYmQ5MzZjZTAwMGExYzJhY2IwNjVlN2I3ZDA1NTI0MGE4MGYzM2I4N2IzMDJjYg',	1633044000,	NULL),
(10,	2,	1,	'Y2MyZTJjY2ViZjRjYzlhZWI3MDVhMzYxM2FkY2ExMTdkMTlhYTkwZmYwYTM0YzIyYTc3ODNjOWE3NjBkZGRjOQ',	1633044252,	NULL),
(11,	2,	1,	'YTk3NGNmYzNjODFhOTExMDEwMmIxNDc1MzZlMWI0MTdjMjQwNDM4NWViNjU3MmUzMjNhYmYwYzI1NzUyNzQ3YQ',	1633297373,	NULL),
(12,	2,	1,	'OGZiODM4MGRiMGFkZWFmMWNmOTVlOWRiMDU4ZGFmMTFmNzhkZTEyMmFmODA5ZWQ0NWNkN2ExZmQ1MTE4YjMyMA',	1633478689,	NULL);

DROP TABLE IF EXISTS `paineis`;
CREATE TABLE `paineis` (
  `host` int NOT NULL,
  `unidade_id` int DEFAULT NULL,
  `senha` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`host`),
  KEY `IDX_CE58BF05EDF4B99B` (`unidade_id`),
  CONSTRAINT `FK_CE58BF05EDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `paineis_servicos`;
CREATE TABLE `paineis_servicos` (
  `host` int NOT NULL,
  `servico_id` int NOT NULL,
  `unidade_id` int DEFAULT NULL,
  PRIMARY KEY (`host`,`servico_id`),
  KEY `IDX_D98415D3CF2713FD` (`host`),
  KEY `IDX_D98415D382E14982` (`servico_id`),
  KEY `IDX_D98415D3EDF4B99B` (`unidade_id`),
  CONSTRAINT `FK_D98415D382E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  CONSTRAINT `FK_D98415D3CF2713FD` FOREIGN KEY (`host`) REFERENCES `paineis` (`host`),
  CONSTRAINT `FK_D98415D3EDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `painel_senha`;
CREATE TABLE `painel_senha` (
  `id` int NOT NULL AUTO_INCREMENT,
  `servico_id` int DEFAULT NULL,
  `unidade_id` int DEFAULT NULL,
  `num_senha` int NOT NULL,
  `sig_senha` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `msg_senha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num_local` smallint NOT NULL,
  `peso` smallint NOT NULL,
  `prioridade` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_cliente` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documento_cliente` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_390182E682E14982` (`servico_id`),
  KEY `IDX_390182E6EDF4B99B` (`unidade_id`),
  CONSTRAINT `FK_390182E682E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  CONSTRAINT `FK_390182E6EDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `painel_senha` (`id`, `servico_id`, `unidade_id`, `num_senha`, `sig_senha`, `msg_senha`, `local`, `num_local`, `peso`, `prioridade`, `nome_cliente`, `documento_cliente`) VALUES
(1,	1,	1,	7,	'C',	'',	'Guichê 1',	2,	1,	'Prioridade',	NULL,	NULL),
(2,	3,	1,	6,	'A',	'',	'Guichê 1',	3,	1,	'Prioridade',	NULL,	NULL),
(3,	3,	1,	8,	'A',	'',	'Guichê 1',	1,	1,	'Prioridade',	NULL,	NULL),
(4,	1,	1,	7,	'C',	'',	'Guichê 1',	2,	1,	'Prioridade',	NULL,	NULL),
(5,	1,	1,	7,	'C',	'',	'Guichê 1',	2,	1,	'Prioridade',	NULL,	NULL),
(6,	3,	1,	1,	'A',	'',	'Guichê 1',	2,	0,	'Normal',	NULL,	NULL),
(7,	3,	1,	1,	'A',	'',	'Guichê 1',	2,	0,	'Normal',	NULL,	NULL),
(8,	3,	1,	1,	'A',	'',	'Guichê 1',	2,	0,	'Normal',	NULL,	NULL),
(9,	3,	1,	2,	'A',	'',	'Guichê 1',	2,	0,	'Normal',	NULL,	NULL),
(10,	3,	1,	2,	'A',	'',	'Guichê 1',	2,	0,	'Normal',	NULL,	NULL),
(11,	1,	1,	1,	'C',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(12,	1,	1,	1,	'C',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(13,	1,	1,	2,	'C',	'',	'Guichê 1',	2,	0,	'Normal',	NULL,	NULL),
(14,	1,	1,	3,	'C',	'',	'Guichê 1',	2,	0,	'Normal',	NULL,	NULL),
(15,	1,	1,	3,	'C',	'',	'Guichê 1',	2,	0,	'Normal',	NULL,	NULL),
(16,	1,	1,	4,	'C',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(17,	1,	1,	4,	'C',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(18,	1,	1,	5,	'C',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(19,	1,	1,	6,	'C',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(20,	3,	1,	3,	'A',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(21,	4,	1,	1,	'B',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(22,	4,	1,	2,	'B',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(23,	4,	1,	2,	'B',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(24,	4,	1,	2,	'B',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(25,	1,	1,	9,	'C',	'',	'Guichê 1',	3,	1,	'Prioridade',	NULL,	NULL),
(26,	1,	1,	9,	'C',	'',	'Guichê 1',	3,	1,	'Prioridade',	NULL,	NULL),
(27,	4,	1,	3,	'B',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(28,	4,	1,	3,	'B',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(29,	4,	1,	4,	'B',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL),
(30,	4,	1,	4,	'B',	'',	'Guichê 1',	3,	0,	'Normal',	NULL,	NULL);

DROP TABLE IF EXISTS `perfis`;
CREATE TABLE `perfis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `modulos` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `perfis` (`id`, `nome`, `descricao`, `modulos`, `created_at`, `updated_at`) VALUES
(1,	'Atendimento',	'asdf',	'novosga.triage,novosga.attendance',	'2021-09-14 21:57:29',	'2021-09-14 22:58:11');

DROP TABLE IF EXISTS `prioridades`;
CREATE TABLE `prioridades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `peso` smallint NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `prioridades` (`id`, `nome`, `descricao`, `peso`, `ativo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'Normal',	'Sem prioridade',	0,	1,	'2021-09-14 21:42:13',	'2021-09-14 22:58:24',	NULL),
(2,	'Prioridade',	'Atendimento prioritário',	1,	1,	'2021-09-14 21:42:13',	NULL,	NULL);

DROP TABLE IF EXISTS `servicos`;
CREATE TABLE `servicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `macro_id` int DEFAULT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `peso` smallint NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_89DD09E3F43A187E` (`macro_id`),
  CONSTRAINT `FK_89DD09E3F43A187E` FOREIGN KEY (`macro_id`) REFERENCES `servicos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `servicos` (`id`, `macro_id`, `nome`, `descricao`, `ativo`, `peso`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	NULL,	'Limpeza de Hardware',	'Limpeza de Hardware Limpeza de Hardware Limpeza de Hardware Limpeza de Hardware Limpeza de Hardware Limpeza de Hardware',	1,	0,	'2021-09-14 21:54:59',	'2021-09-14 22:54:22',	NULL),
(2,	1,	'asdasd',	'asdasd',	1,	1,	'2021-09-14 22:24:47',	NULL,	NULL),
(3,	NULL,	'Instalação de Pacote Office',	'Instalação de Pacote Office Instalação de Pacote Office Instalação de Pacote Office Instalação de Pacote Office Instalação de Pacote Office Instalação de Pacote Office Instalação de P',	1,	0,	'2021-09-14 22:55:48',	NULL,	NULL),
(4,	NULL,	'Instalção de Redes de computadores',	'Instalção de Redes de computadores Instalção de Redes de computadores',	1,	0,	'2021-09-14 22:56:13',	NULL,	NULL);

DROP TABLE IF EXISTS `servicos_metadata`;
CREATE TABLE `servicos_metadata` (
  `namespace` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `servico_id` int NOT NULL,
  `value` json NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`namespace`,`name`,`servico_id`),
  KEY `IDX_8E8BF0E482E14982` (`servico_id`),
  CONSTRAINT `FK_8E8BF0E482E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `servicos_unidades`;
CREATE TABLE `servicos_unidades` (
  `servico_id` int NOT NULL,
  `unidade_id` int NOT NULL,
  `local_id` int DEFAULT NULL,
  `departamento_id` int DEFAULT NULL,
  `sigla` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `peso` smallint NOT NULL,
  `prioridade` tinyint(1) NOT NULL,
  `numero_inicial` int NOT NULL,
  `numero_final` int DEFAULT NULL,
  `incremento` int NOT NULL,
  `mensagem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`servico_id`,`unidade_id`),
  KEY `IDX_C50F703482E14982` (`servico_id`),
  KEY `IDX_C50F7034EDF4B99B` (`unidade_id`),
  KEY `IDX_C50F70345D5A2101` (`local_id`),
  KEY `IDX_C50F70345A91C08D` (`departamento_id`),
  CONSTRAINT `FK_C50F70345A91C08D` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `FK_C50F70345D5A2101` FOREIGN KEY (`local_id`) REFERENCES `locais` (`id`),
  CONSTRAINT `FK_C50F703482E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  CONSTRAINT `FK_C50F7034EDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `servicos_unidades` (`servico_id`, `unidade_id`, `local_id`, `departamento_id`, `sigla`, `ativo`, `peso`, `prioridade`, `numero_inicial`, `numero_final`, `incremento`, `mensagem`) VALUES
(1,	1,	1,	1,	'C',	1,	1,	1,	1,	NULL,	1,	NULL),
(3,	1,	1,	1,	'A',	1,	1,	1,	1,	NULL,	1,	NULL),
(4,	1,	1,	1,	'B',	1,	1,	1,	1,	NULL,	1,	NULL);

DROP TABLE IF EXISTS `servicos_usuarios`;
CREATE TABLE `servicos_usuarios` (
  `servico_id` int NOT NULL,
  `unidade_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `peso` smallint NOT NULL,
  PRIMARY KEY (`servico_id`,`unidade_id`,`usuario_id`),
  KEY `IDX_CF69430282E14982` (`servico_id`),
  KEY `IDX_CF694302EDF4B99B` (`unidade_id`),
  KEY `IDX_CF694302DB38439E` (`usuario_id`),
  CONSTRAINT `FK_CF69430282E14982` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  CONSTRAINT `FK_CF694302DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK_CF694302EDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `servicos_usuarios` (`servico_id`, `unidade_id`, `usuario_id`, `peso`) VALUES
(1,	1,	1,	1),
(1,	1,	2,	1),
(1,	1,	3,	1),
(3,	1,	1,	1),
(3,	1,	2,	1),
(3,	1,	3,	1),
(4,	1,	1,	1),
(4,	1,	2,	1),
(4,	1,	3,	1);

DROP TABLE IF EXISTS `unidades`;
CREATE TABLE `unidades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `impressao_cabecalho` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `impressao_rodape` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `impressao_exibir_data` tinyint(1) NOT NULL,
  `impressao_exibir_prioridade` tinyint(1) NOT NULL,
  `impressao_exibir_nome_unidade` tinyint(1) NOT NULL,
  `impressao_exibir_nome_servico` tinyint(1) NOT NULL,
  `impressao_exibir_mensagem_servico` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `unidades` (`id`, `nome`, `descricao`, `ativo`, `created_at`, `updated_at`, `deleted_at`, `impressao_cabecalho`, `impressao_rodape`, `impressao_exibir_data`, `impressao_exibir_prioridade`, `impressao_exibir_nome_unidade`, `impressao_exibir_nome_servico`, `impressao_exibir_mensagem_servico`) VALUES
(1,	'wepsistemas',	'uni',	1,	'2021-09-14 21:42:01',	'2021-09-14 21:45:16',	NULL,	'Novo SGA',	'Novo SGA',	1,	1,	1,	1,	1);

DROP TABLE IF EXISTS `unidades_metadata`;
CREATE TABLE `unidades_metadata` (
  `namespace` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `unidade_id` int NOT NULL,
  `value` json NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`namespace`,`name`,`unidade_id`),
  KEY `IDX_A21ACF47EDF4B99B` (`unidade_id`),
  CONSTRAINT `FK_A21ACF47EDF4B99B` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sobrenome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `ultimo_acesso` datetime DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `algorithm` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `salt` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EF687F2AA08CB10` (`login`),
  UNIQUE KEY `UNIQ_EF687F2E7927C74` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `usuarios` (`id`, `login`, `nome`, `sobrenome`, `email`, `senha`, `ativo`, `ultimo_acesso`, `ip`, `session_id`, `algorithm`, `admin`, `salt`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'admin',	'Administrador',	'Local',	NULL,	'$2y$12$V7Zjlb2rcVo9GOjMBW3hwOjcAphikPzdWxY.uZu/O467gJlmZ8Nry',	1,	NULL,	NULL,	'fqska6u7omtfe2h7mnf0s8on8d',	'bcrypt',	1,	NULL,	'2021-09-14 21:41:53',	'2021-09-26 15:01:03',	NULL),
(2,	'emanuel',	'Emanuel',	'Angelo',	NULL,	'$2y$12$drJ7cFN3m2GNDHIRktVkmuaYftaqM.00G.sbMOAO2YVV78AnnqGJW',	1,	NULL,	NULL,	'5qj3puoedhsr12udjk1qlha2j2',	'bcrypt',	0,	NULL,	'2021-09-14 23:01:22',	'2021-09-14 23:16:58',	NULL),
(3,	'wesly',	'Wesly',	'Silva',	NULL,	'$2y$12$7VgAa5spHmcZF/1FZFpiJeskK4G1becEIeAvn.MHnk1yUDnOcK.R.',	1,	NULL,	NULL,	'56nuj420nuqogkd4tpc14780ll',	'bcrypt',	0,	NULL,	'2021-09-14 23:04:48',	'2021-09-15 19:38:55',	NULL);

DROP TABLE IF EXISTS `usuarios_metadata`;
CREATE TABLE `usuarios_metadata` (
  `namespace` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_id` int NOT NULL,
  `value` json NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`namespace`,`name`,`usuario_id`),
  KEY `IDX_BD8E7838DB38439E` (`usuario_id`),
  CONSTRAINT `FK_BD8E7838DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `usuarios_metadata` (`namespace`, `name`, `usuario_id`, `value`) VALUES
('global',	'atendimento.local',	1,	'3'),
('global',	'atendimento.local',	2,	'1'),
('global',	'atendimento.local',	3,	'2'),
('global',	'atendimento.tipo',	1,	'\"todos\"'),
('global',	'atendimento.tipo',	2,	'\"todos\"'),
('global',	'atendimento.tipo',	3,	'\"todos\"'),
('global',	'session.unidade',	1,	'1'),
('global',	'session.unidade',	2,	'1'),
('global',	'session.unidade',	3,	'1');

DROP VIEW IF EXISTS `view_atendimentos`;
CREATE TABLE `view_atendimentos` (`id` int, `num_local` smallint, `dt_age` datetime, `dt_cheg` datetime, `dt_cha` datetime, `dt_ini` datetime, `dt_fim` datetime, `tempo_espera` int, `tempo_permanencia` int, `tempo_atendimento` int, `tempo_deslocamento` int, `status` varchar(25), `resolucao` varchar(25), `observacao` longtext, `senha_sigla` varchar(3), `senha_numero` int, `cliente_id` int, `unidade_id` int, `servico_id` int, `prioridade_id` int, `usuario_id` int, `usuario_tri_id` int, `atendimento_id` int);


DROP VIEW IF EXISTS `view_atendimentos_codificados`;
CREATE TABLE `view_atendimentos_codificados` (`valor_peso` smallint, `servico_id` int, `atendimento_id` int);


DROP TABLE IF EXISTS `view_atendimentos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`novosga_us`@`localhost` SQL SECURITY DEFINER VIEW `view_atendimentos` AS select `atendimentos`.`id` AS `id`,`atendimentos`.`num_local` AS `num_local`,`atendimentos`.`dt_age` AS `dt_age`,`atendimentos`.`dt_cheg` AS `dt_cheg`,`atendimentos`.`dt_cha` AS `dt_cha`,`atendimentos`.`dt_ini` AS `dt_ini`,`atendimentos`.`dt_fim` AS `dt_fim`,`atendimentos`.`tempo_espera` AS `tempo_espera`,`atendimentos`.`tempo_permanencia` AS `tempo_permanencia`,`atendimentos`.`tempo_atendimento` AS `tempo_atendimento`,`atendimentos`.`tempo_deslocamento` AS `tempo_deslocamento`,`atendimentos`.`status` AS `status`,`atendimentos`.`resolucao` AS `resolucao`,`atendimentos`.`observacao` AS `observacao`,`atendimentos`.`senha_sigla` AS `senha_sigla`,`atendimentos`.`senha_numero` AS `senha_numero`,`atendimentos`.`cliente_id` AS `cliente_id`,`atendimentos`.`unidade_id` AS `unidade_id`,`atendimentos`.`servico_id` AS `servico_id`,`atendimentos`.`prioridade_id` AS `prioridade_id`,`atendimentos`.`usuario_id` AS `usuario_id`,`atendimentos`.`usuario_tri_id` AS `usuario_tri_id`,`atendimentos`.`atendimento_id` AS `atendimento_id` from `atendimentos` union all select `historico_atendimentos`.`id` AS `id`,`historico_atendimentos`.`num_local` AS `num_local`,`historico_atendimentos`.`dt_age` AS `dt_age`,`historico_atendimentos`.`dt_cheg` AS `dt_cheg`,`historico_atendimentos`.`dt_cha` AS `dt_cha`,`historico_atendimentos`.`dt_ini` AS `dt_ini`,`historico_atendimentos`.`dt_fim` AS `dt_fim`,`historico_atendimentos`.`tempo_espera` AS `tempo_espera`,`historico_atendimentos`.`tempo_permanencia` AS `tempo_permanencia`,`historico_atendimentos`.`tempo_atendimento` AS `tempo_atendimento`,`historico_atendimentos`.`tempo_deslocamento` AS `tempo_deslocamento`,`historico_atendimentos`.`status` AS `status`,`historico_atendimentos`.`resolucao` AS `resolucao`,`historico_atendimentos`.`observacao` AS `observacao`,`historico_atendimentos`.`senha_sigla` AS `senha_sigla`,`historico_atendimentos`.`senha_numero` AS `senha_numero`,`historico_atendimentos`.`cliente_id` AS `cliente_id`,`historico_atendimentos`.`unidade_id` AS `unidade_id`,`historico_atendimentos`.`servico_id` AS `servico_id`,`historico_atendimentos`.`prioridade_id` AS `prioridade_id`,`historico_atendimentos`.`usuario_id` AS `usuario_id`,`historico_atendimentos`.`usuario_tri_id` AS `usuario_tri_id`,`historico_atendimentos`.`atendimento_id` AS `atendimento_id` from `historico_atendimentos`;

DROP TABLE IF EXISTS `view_atendimentos_codificados`;
CREATE ALGORITHM=UNDEFINED DEFINER=`novosga_us`@`localhost` SQL SECURITY DEFINER VIEW `view_atendimentos_codificados` AS select `atendimentos_codificados`.`valor_peso` AS `valor_peso`,`atendimentos_codificados`.`servico_id` AS `servico_id`,`atendimentos_codificados`.`atendimento_id` AS `atendimento_id` from `atendimentos_codificados` union all select `historico_atendimentos_codificados`.`valor_peso` AS `valor_peso`,`historico_atendimentos_codificados`.`servico_id` AS `servico_id`,`historico_atendimentos_codificados`.`atendimento_id` AS `atendimento_id` from `historico_atendimentos_codificados`;

-- 2021-09-26 18:29:53
