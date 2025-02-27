-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 27-Fev-2025 às 16:42
-- Versão do servidor: 8.0.41-0ubuntu0.22.04.1
-- versão do PHP: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ia_governo`
--
CREATE DATABASE IF NOT EXISTS `ia_governo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ia_governo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_software`
--

CREATE TABLE `categoria_software` (
  `codigo` int NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria_software`
--

INSERT INTO `categoria_software` (`codigo`, `nome`) VALUES
(1, 'Acessibilidade'),
(2, 'Acesso Remoto'),
(3, 'Administração de Sistemas Linux/Unix'),
(4, 'Agendamento de Reuniões'),
(5, 'Ambiente de Desenvolvimento'),
(6, 'Ambiente de Execução Javascript'),
(7, 'Análise de Dados'),
(8, 'Análise de Desempenho'),
(9, 'Análise de Tráfego de Rede'),
(10, 'Análise de Vídeo'),
(11, 'Análise de Vulnerabilidades'),
(12, 'Análise Textual'),
(13, 'Antivirus'),
(14, 'API Manager'),
(15, 'Aprendizado de Máquina'),
(16, 'Armazenamento de Objetos'),
(17, 'Armazenamento em Nuvem'),
(18, 'Arquivística'),
(19, 'Assinatura Digital'),
(20, 'Astronomia'),
(21, 'Auditoria'),
(22, 'Autenticação e Autorização'),
(23, 'Automação de Infraestrutura'),
(24, 'Automação de processos'),
(25, 'Avaliação Médica'),
(26, 'Backup'),
(27, 'Balanceamento de Carga'),
(28, 'Banco de Dados'),
(29, 'Blockchain'),
(30, 'BPMN'),
(31, 'Busca'),
(32, 'Business Intelligence'),
(33, 'Cache'),
(34, 'Calendário e Agenda'),
(35, 'Captura de Tela'),
(36, 'Circuito de TV'),
(37, 'Cliente de Banco de Dados'),
(38, 'Cliente de Controle de Versão'),
(39, 'Cliente de e-mail'),
(40, 'Cliente de LDAP'),
(41, 'Compactação de Arquivos'),
(42, 'Comparação de Arquivos'),
(43, 'Compartilhamento de Arquivos'),
(44, 'Compêndios'),
(45, 'Computação Distribuída'),
(47, 'Computação Numérica'),
(48, 'Container'),
(49, 'Controle de Chamados de Suporte'),
(50, 'Controle de Hospedagem'),
(51, 'Controle de Versão'),
(52, 'Crawler'),
(53, 'Criação de Portais Corporativos'),
(54, 'Criptografia'),
(55, 'Dashboard'),
(56, 'Data Analysys Expression'),
(57, 'Desenvolvimento de API'),
(58, 'Detecção de Intrusão'),
(59, 'DHCP'),
(60, 'Diagramação'),
(61, 'Diagramas'),
(62, 'Distribuição de Software'),
(63, 'DNS'),
(64, 'E-mail'),
(65, 'E-mail Marketing'),
(66, 'Edição 3D'),
(67, 'Edição de Áudio'),
(68, 'Edição de Imagens'),
(69, 'Editor de Texto'),
(70, 'Editor HTML WYSIWYG'),
(71, 'Emulação de Terminal'),
(72, 'Ensino de Programação'),
(73, 'Estatística'),
(74, 'Filtro de Conteúdo'),
(75, 'Firewall'),
(76, 'Forense Computacional'),
(77, 'Fóruns'),
(78, 'Fotografia Panorâmica'),
(79, 'Framework'),
(80, 'FTP'),
(81, 'Genética'),
(82, 'Geração de Gráficos'),
(83, 'Geração de Mapas'),
(84, 'Gerenciamento de Atendimento Presencial'),
(85, 'Gerenciamento de Coleções'),
(86, 'Gerenciamento de Coleções Biológicas'),
(87, 'Gerenciamento de Configuração'),
(88, 'Gerenciamento de Conteúdo'),
(89, 'Gerenciamento de Dados'),
(90, 'Gerenciamento de Dependências'),
(91, 'Gerenciamento de Distribuições Linux'),
(92, 'Gerenciamento de Documentos'),
(93, 'Gerenciamento de Endereços IP'),
(94, 'Gerenciamento de Identidade'),
(95, 'Gerenciamento de Periódicos'),
(96, 'Gerenciamento de Projetos'),
(97, 'Gerenciamento de Referências Bibliográficas'),
(98, 'Gerenciamento de Repositório'),
(99, 'Gerenciamento de Riscos'),
(100, 'Gerenciamento de Senhas'),
(101, 'Gerenciamento de Serviços'),
(102, 'Gerenciamento de Universidade'),
(103, 'Gestão de Aprendizagem'),
(104, 'Gestão de Conferências'),
(105, 'Gestão de Documentos'),
(106, 'Gestão do Planejamento Estratégico'),
(107, 'Gestão Escolar'),
(108, 'Gestão Integrada'),
(109, 'Gráfico de Rede'),
(110, 'Grafos'),
(111, 'Groupware'),
(112, 'Helpdesk'),
(113, 'IDE'),
(114, 'IMAP e POP3'),
(115, 'Impressão'),
(116, 'Indexação'),
(117, 'Informação Geográfica'),
(118, 'Inspeção de Código'),
(119, 'Integração com Windows'),
(120, 'Integração Contínua'),
(121, 'Navegador de Internet'),
(122, 'Inventário'),
(123, 'ITIL'),
(124, 'Kanban'),
(125, 'LaTeX'),
(126, 'LDAP'),
(127, 'Linguagem de Programação/Compilador'),
(128, 'Mapas Mentais'),
(129, 'Marketing'),
(130, 'Matemática'),
(131, 'Memorização'),
(132, 'Mensageria'),
(133, 'Metal as a Service'),
(134, 'Mineração de Dados'),
(135, 'Modelagem 3D'),
(136, 'Modelagem de Banco de Dados'),
(137, 'Modelagem de Processos'),
(138, 'Modelagem UML'),
(139, 'Monitoramento'),
(140, 'NTP'),
(141, 'Ontologia'),
(142, 'Ouvidoria'),
(143, 'Participação Social'),
(144, 'PDF'),
(145, 'Performance'),
(146, 'Plataforma de Nuvem'),
(147, 'Plataforma de Vídeo Online'),
(148, 'Preservação Digital'),
(149, 'Processamento de Imagens'),
(150, 'Prototipação de Interfaces com Usuário'),
(151, 'Push Notification'),
(152, 'Questionários'),
(153, 'Química Computacional'),
(154, 'Rastreamento de Tarefas'),
(155, 'Reconhecimento de Imagens'),
(156, 'Rede Virtual Privada'),
(157, 'Redes Sociais'),
(158, 'Relatórios'),
(159, 'Repositório de Arquivos'),
(160, 'Repositório de Periódicos'),
(161, 'Reprodução de Vídeo'),
(162, 'Saúde Pública'),
(163, 'Servidor de Aplicação Web'),
(164, 'Simulação de Eventos'),
(165, 'Simulação Veicular'),
(166, 'Sincronização de Arquivos'),
(167, 'Sistemas Operacionais'),
(168, 'SMTP'),
(169, 'Spam'),
(170, 'SSH e Telnet'),
(171, 'Streaming'),
(172, 'Suíte de Escritório'),
(173, 'Switch'),
(174, 'Testes'),
(175, 'Transcrição de Áudio'),
(176, 'Virtualização'),
(177, 'Visão Computacional'),
(178, 'Visualização de Dados'),
(179, 'Visualização de Documentos'),
(180, 'Visualização Molecular'),
(181, 'Visualizador DjVu'),
(182, 'VOIP'),
(183, 'Votação Online'),
(184, 'Webconferência'),
(185, 'Webmail'),
(186, 'Wiki'),
(187, 'Gerenciamento de Pacotes'),
(188, 'Gerenciamento de Downloads'),
(189, 'Conversor de Documentos'),
(190, 'ERP'),
(191, 'Fila'),
(192, 'Agropecuária'),
(193, 'Gerenciamento de Informação de Laboratório'),
(194, 'Cliente de Internet'),
(195, 'Edição de Vídeo'),
(196, 'GUI'),
(197, 'Data e hora'),
(198, 'Gravação de CD/DVD'),
(199, 'Criação de Disco de Boot'),
(200, 'Prevenção de LER/DORT'),
(201, 'Filtro de Entrada de Dados'),
(202, 'Recuperação de Disco'),
(203, 'Visualização de Processos'),
(204, 'Quebra de Senhas'),
(205, 'Text-To-Speech'),
(206, 'Registro de Candidaturas'),
(207, 'Criação de Legenda'),
(208, 'Limpeza do PC'),
(209, 'Impressao 3D'),
(210, 'Visualização de Imagens'),
(211, 'Arrecadação de Impostos'),
(212, 'Gerenciamento de Fontes'),
(213, 'Segurança de Transporte'),
(215, 'Processamento de Linguagem Natural'),
(216, 'Redes Neurais'),
(217, 'Gerenciamento de Nuvem'),
(218, 'Criação de Tutoriais'),
(219, 'Música'),
(220, 'Roteamento de Rede'),
(221, 'MOOC'),
(222, 'Simulação de Projetos'),
(223, 'Jogos'),
(224, 'Robótica'),
(225, 'Licitações'),
(226, 'Concursos'),
(227, 'Gestão de Crédito'),
(228, 'Orçamento Participativo'),
(229, 'Gestão de Refeitórios'),
(230, 'Gestão de Contratos'),
(231, 'Gestão de Plano de Saúde'),
(232, 'Gestão de Pessoas'),
(233, 'Animação'),
(234, 'Projeto de Circuitos Eletrônicos'),
(235, 'Emulação de Celular'),
(236, 'Engenharia'),
(237, 'Gestão de Bibliotecas'),
(238, 'Gestão Acadêmica'),
(239, 'Gerenciamento de Infraestrutura'),
(240, 'Experiência do Usuário'),
(241, 'Desconhecida'),
(242, 'HTTP'),
(243, 'CMM'),
(244, 'Biologia'),
(245, 'Gerenciamento de Eventos'),
(246, 'Educacional'),
(247, 'Barramento de Integração'),
(248, 'Migração'),
(249, 'Câmera'),
(250, 'CODEC'),
(251, 'Chatbot'),
(252, 'Microscópio'),
(253, 'Simulação de Processos'),
(254, 'Contabilidade'),
(255, 'Análise de Sistemas Elétricos'),
(256, 'Análise Marinha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `licenca`
--

CREATE TABLE `licenca` (
  `codigo` int NOT NULL,
  `nome` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `livre` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `licenca`
--

INSERT INTO `licenca` (`codigo`, `nome`, `livre`) VALUES
(1, 'AFPL', 1),
(2, 'AGPL', 1),
(3, 'AGPL-3.0', 1),
(4, 'Amanda', 1),
(5, 'Anaconda', 1),
(6, 'Apache 2.0', 1),
(7, 'APL', 1),
(8, 'BSD', 1),
(9, 'BSD 2-Clause', 1),
(10, 'BSD 3-Clause', 1),
(11, 'CDDL', 1),
(12, 'Diversas Livres', 1),
(13, 'Domínio Público', 1),
(14, 'DSpace ', 1),
(15, 'Eclipse', 1),
(16, 'EUPL', 1),
(17, 'GPL', 1),
(18, 'GPL-2.0', 1),
(19, 'GPL-2.5', 1),
(20, 'GPL-3.0', 1),
(21, 'GPML', 1),
(22, 'ImageMagick', 1),
(23, 'ISC', 1),
(24, 'LaTeX', 1),
(25, 'Leptonica', 1),
(26, 'LGPL', 1),
(27, 'LGPL-2.0', 1),
(28, 'LGPL-2.1', 1),
(29, 'LGPL-3.0', 1),
(30, 'Microsoft Reciprocal License', 1),
(31, 'MIT', 1),
(32, 'MIT Expat License', 1),
(33, 'MPL', 1),
(34, 'MPL-2.0', 1),
(35, 'Não definida', 1),
(36, 'New BSD', 1),
(37, 'OCTLA', 1),
(38, 'OpenLDAP', 1),
(39, 'PHP-3.01', 1),
(40, 'PostgreSQL ', 1),
(41, 'PyMol', 1),
(42, 'Python', 1),
(43, 'SSPL-1.0', 1),
(44, 'UIUC', 1),
(45, 'Zend Framework', 1),
(46, 'zLIB', 1),
(47, 'ZPL', 1),
(48, 'Freeware', 0),
(49, 'Proprietária', 0),
(50, 'Windows License', 0),
(51, 'The Oracle Java License', 0),
(52, 'Red Hat', 0),
(53, 'Shareware', 0),
(80, 'Demoiselle Framework', 0),
(81, 'Sem licença', 0),
(82, 'PdfStream Dumper', 1),
(83, 'Software Público', 1),
(84, 'Coturn', 1),
(85, 'OpenResty', 1),
(87, 'x3270', 1),
(88, 'Artistic License', 1),
(89, 'UserFrosting', 1),
(90, 'IBM Public License', 1),
(91, 'Donationware', 0),
(92, 'PyTorch', 1),
(93, 'ASL', 1),
(94, 'Common Public License Version 1.0', 1),
(95, 'Source License', 1),
(96, 'Arachni Public Source License v1.0', 1),
(97, 'Creative Commons', 1),
(98, 'Academic Free License', 1),
(99, 'Django', 1),
(100, 'Descontinuado', 0),
(101, 'cocos2d', 1),
(102, 'WinPcap', 1),
(103, 'Haskell', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orgao`
--

CREATE TABLE `orgao` (
  `codigo` int NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tipo_orgao` int NOT NULL,
  `semresposta` tinyint(1) NOT NULL DEFAULT '0',
  `sigla` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `pedidos` tinyint NOT NULL DEFAULT '1',
  `usaia` tinyint(1) NOT NULL DEFAULT '0',
  `houvemelhoria` tinyint(1) NOT NULL DEFAULT '0',
  `hapoliticainterna` tinyint(1) NOT NULL DEFAULT '0',
  `questoeseticas` tinyint(1) NOT NULL DEFAULT '0',
  `pesquisa` tinyint(1) NOT NULL DEFAULT '0',
  `aplica` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `orgao`
--

INSERT INTO `orgao` (`codigo`, `nome`, `tipo_orgao`, `semresposta`, `sigla`, `pedidos`, `usaia`, `houvemelhoria`, `hapoliticainterna`, `questoeseticas`, `pesquisa`, `aplica`) VALUES
(1, 'Universidade Federal do Acre', 8, 0, 'UFAC', 0, 0, 0, 0, 0, 0, 0),
(2, 'Universidade Federal do Amazonas', 8, 0, 'UFAM', 0, 0, 0, 0, 0, 0, 0),
(3, 'Universidade Federal do Oeste do Pará', 8, 0, 'UFOPA', 0, 0, 0, 0, 0, 0, 0),
(4, 'Universidade Federal do Pará', 8, 0, 'UFPA', 0, 0, 0, 0, 0, 0, 0),
(5, 'Universidade Federal Rural da Amazônia', 8, 0, 'UFRA', 0, 0, 0, 0, 0, 0, 0),
(6, 'Universidade Federal de Roraima', 8, 0, 'UFRR', 0, 0, 0, 0, 0, 0, 0),
(7, 'Universidade Federal de Tocantins', 8, 0, 'UFT', 0, 0, 0, 0, 0, 0, 0),
(8, 'Universidade Federal do Amapá', 8, 0, 'UNIFAP', 0, 0, 0, 0, 0, 0, 0),
(9, 'Universidade Federal do Sul e Sudeste do Pará', 8, 0, 'UNIFESSPA', 0, 0, 0, 0, 0, 0, 0),
(10, 'Universidade Federal de Rondônia', 8, 0, 'UNIR', 0, 0, 0, 0, 0, 0, 0),
(11, 'Universidade Federal de Alagoas', 8, 0, 'UFAL', 0, 0, 0, 0, 0, 0, 0),
(12, 'Universidade Federal da Bahia', 8, 0, 'UFBA', 0, 0, 0, 0, 0, 0, 0),
(13, 'Universidade Federal do Ceará', 8, 0, 'UFC', 0, 0, 0, 0, 0, 0, 0),
(14, 'Universidade Federal do Cariri', 8, 0, 'UFCA', 0, 0, 0, 0, 0, 0, 0),
(15, 'Universidade Federal de Campina Grande', 8, 0, 'UFCG', 0, 0, 0, 0, 0, 0, 0),
(16, 'Universidade Federal Rural do Semi-Árido', 8, 0, 'UFERSA', 0, 0, 0, 0, 0, 0, 0),
(17, 'Universidade Federal do Sul da Bahia', 8, 0, 'UFESBA', 0, 0, 0, 0, 0, 0, 0),
(18, 'Universidade Federal do Maranhão', 8, 0, 'UFMA', 0, 0, 0, 0, 0, 0, 0),
(19, 'Universidade Federal do Oeste da Bahia', 8, 0, 'UFOB', 0, 0, 0, 0, 0, 0, 0),
(20, 'Universidade Federal da Paraíba', 8, 0, 'UFPB', 0, 0, 0, 0, 0, 0, 0),
(21, 'Universidade Federal de Pernambuco', 8, 0, 'UFPE', 0, 0, 0, 0, 0, 0, 0),
(22, 'Universidade Federal do Piauí', 8, 0, 'UFPI', 0, 0, 0, 0, 0, 0, 0),
(23, 'Universidade Federal do Recôncavo da Bahia', 8, 0, 'UFRB', 0, 0, 0, 0, 0, 0, 0),
(24, 'Universidade Federal do Rio Grande do Norte', 8, 0, 'UFRN', 0, 0, 0, 0, 0, 0, 0),
(25, 'Universidade Federal Rural de Pernambuco', 8, 0, 'UFRPE', 0, 0, 0, 0, 0, 0, 0),
(26, 'Universidade Federal de Sergipe', 8, 0, 'UFS', 0, 0, 0, 0, 0, 0, 0),
(27, 'Universidade da Integração Internacional da Lusofonia Afro-Brasileira', 8, 0, 'UNILAB', 0, 0, 0, 0, 0, 0, 0),
(28, 'Universidade Federal do Vale do São Francisco', 8, 0, 'UNIVASF', 0, 0, 0, 0, 0, 0, 0),
(29, 'Universidade Federal do ABC', 8, 0, 'UFABC', 0, 0, 0, 0, 0, 0, 0),
(30, 'Universidade Federal do Espírito Santo', 8, 0, 'UFES', 0, 0, 0, 0, 0, 0, 0),
(31, 'Universidade Federal Fluminense', 8, 0, 'UFF', 0, 0, 0, 0, 0, 0, 0),
(32, 'Universidade Federal de Juiz de Fora', 8, 0, 'UFJF', 0, 0, 0, 0, 0, 0, 0),
(33, 'Universidade Federal de Lavras', 8, 0, 'UFLA', 0, 0, 0, 0, 0, 0, 0),
(34, 'Universidade Federal de Minas Gerais', 8, 0, 'UFMG', 0, 0, 0, 0, 0, 0, 0),
(35, 'Universidade Federal de Ouro Preto', 8, 0, 'UFOP', 0, 0, 0, 0, 0, 0, 0),
(36, 'Universidade Federal do Rio de Janeiro', 8, 0, 'UFRJ', 0, 0, 0, 0, 0, 0, 0),
(37, 'Universidade Federal Rural do Rio de Janeiro', 8, 0, 'UFRRJ', 0, 0, 0, 0, 0, 0, 0),
(38, 'Universidade Federal de São Carlos', 8, 0, 'UFSCar', 0, 0, 0, 0, 0, 0, 0),
(39, 'Universidade Federal de São João del-Rei', 8, 0, 'UFSJ', 0, 0, 0, 0, 0, 0, 0),
(40, 'Universidade Federal do Triângulo Mineiro', 8, 0, 'UFTM', 0, 0, 0, 0, 0, 0, 0),
(41, 'Universidade Federal de Uberlândia', 8, 0, 'UFU', 0, 0, 0, 0, 0, 0, 0),
(42, 'Universidade Federal de Viçosa', 8, 0, 'UFV', 0, 0, 0, 0, 0, 0, 0),
(43, 'Universidade Federal dos Vales do Jequitinhonha e do Mucuri', 8, 0, 'UFVJM', 0, 0, 0, 0, 0, 0, 0),
(44, 'Universidade Federal de Alfenas', 8, 0, 'UNIFAL', 0, 0, 0, 0, 0, 0, 0),
(45, 'Universidade Federal de Itajubá', 8, 0, 'UNIFEI', 0, 0, 0, 0, 0, 0, 0),
(46, 'Universidade Federal de São Paulo', 8, 0, 'UNIFESP', 0, 0, 0, 0, 0, 0, 0),
(47, 'Universidade Federal do Estado do Rio de Janeiro', 8, 0, 'UNIRIO', 0, 0, 0, 0, 0, 0, 0),
(48, 'Universidade Federal de Goiás', 8, 0, 'UFG', 0, 0, 0, 0, 0, 0, 0),
(49, 'Universidade Federal da Grande Dourados', 8, 0, 'UFGD', 0, 0, 0, 0, 0, 0, 0),
(50, 'Universidade Federal de Mato Grosso do Sul', 8, 0, 'UFMS', 0, 0, 0, 0, 0, 0, 0),
(51, 'Universidade Federal de Mato Grosso', 8, 0, 'UFMT', 0, 0, 0, 0, 0, 0, 0),
(52, 'Universidade de Brasília', 8, 0, 'UnB', 0, 0, 0, 0, 0, 0, 0),
(53, 'Universidade Federal do Rio Grande', 8, 0, 'FURG', 0, 0, 0, 0, 0, 0, 0),
(54, 'Universidade Federal de Ciências da Saúde de Porto Alegre', 8, 0, 'UFCSPA', 0, 0, 0, 0, 0, 0, 0),
(55, 'Universidade Federal da Fronteira Sul', 8, 0, 'UFFS', 0, 0, 0, 0, 0, 0, 0),
(56, 'Universidade Federal de Pelotas', 8, 0, 'UFPEL', 0, 0, 0, 0, 0, 0, 0),
(57, 'Universidade Federal do Paraná', 8, 0, 'UFPR', 0, 0, 0, 0, 0, 0, 0),
(58, 'Universidade Federal do Rio Grande do Sul', 8, 0, 'UFRGS', 0, 0, 0, 0, 0, 0, 0),
(59, 'Universidade Federal de Santa Catarina', 8, 0, 'UFSC', 0, 0, 0, 0, 0, 0, 0),
(60, 'Universidade Federal de Santa Maria', 8, 0, 'UFSM', 0, 0, 0, 0, 0, 0, 0),
(61, 'Universidade Federal da Integração Latino-Americana', 8, 0, 'UNILA', 0, 0, 0, 0, 0, 0, 0),
(62, 'Universidade Federal do Pampa', 8, 0, 'UNIPAMPA', 0, 0, 0, 0, 0, 0, 0),
(63, 'Universidade Tecnológica Federal do Paraná', 8, 0, 'UTFPR', 0, 0, 0, 0, 0, 0, 0),
(64, 'Ministério da Defesa', 7, 0, 'MD', 0, 0, 0, 0, 0, 0, 0),
(65, 'Ministério da Agricultura', 7, 0, 'MAPA', 0, 0, 0, 0, 0, 0, 0),
(66, 'Ministério da Cidadania', 7, 0, 'MCIDADANIA', 0, 0, 0, 0, 0, 0, 0),
(67, 'Ministério da Ciência e Tecnologia', 7, 0, 'MCTIC', 0, 0, 0, 0, 0, 0, 0),
(68, 'Ministério do Desenvolvimento Regional', 7, 0, 'MDR', 0, 0, 0, 0, 0, 0, 0),
(69, 'Ministério da Economia', 7, 0, 'ME', 0, 0, 0, 0, 0, 0, 0),
(70, 'Ministério da Educação', 7, 0, 'MEC', 0, 0, 0, 0, 0, 0, 0),
(71, 'Ministério da Infraestrutura', 7, 0, 'MINFRA', 0, 0, 0, 0, 0, 0, 0),
(72, 'Ministério do Meio Ambiente', 7, 0, 'MMA', 0, 0, 0, 0, 0, 0, 0),
(73, 'Ministério de Minas e Energia', 7, 0, 'MME', 0, 0, 0, 0, 0, 0, 0),
(74, 'Ministério da Mulher', 7, 0, 'MMFDH', 0, 0, 0, 0, 0, 0, 0),
(75, 'Ministério das Relações Exteriores', 7, 0, 'MRE', 0, 0, 0, 0, 0, 0, 0),
(76, 'Ministério da Saúde', 7, 0, 'MS', 0, 0, 0, 0, 0, 0, 0),
(77, 'Ministério do Turismo', 7, 0, 'MTur', 0, 0, 0, 0, 0, 0, 0),
(78, 'Centrais Elétricas Brasileiras S.A.', 3, 0, 'ELETROBRAS', 0, 0, 0, 0, 0, 0, 0),
(79, 'Petróleo Brasileiro S.A.', 3, 0, 'PETROBRAS', 0, 0, 0, 0, 0, 0, 0),
(81, 'BANCO DO BRASIL', 3, 0, 'BB', 0, 0, 0, 0, 0, 0, 0),
(82, 'CAIXA ECONÔMICA FEDERAL', 3, 0, 'CEF', 0, 0, 0, 0, 0, 0, 0),
(83, 'Serviço Federal de Processamento de Dados', 3, 0, 'SERPRO', 0, 0, 0, 0, 0, 0, 0),
(84, 'Empresa de Tecnologia e Informações da Previdência', 1, 0, 'DATAPREV', 0, 0, 0, 0, 0, 0, 0),
(85, 'Câmara dos Deputados', 6, 0, 'Câmara', 0, 0, 0, 0, 0, 0, 0),
(86, 'Senado Federal', 6, 0, '', 0, 0, 0, 0, 0, 0, 0),
(87, 'Supremo Tribunal Federal', 5, 0, 'STF', 0, 0, 0, 0, 0, 0, 0),
(88, 'Agência Brasileira Gestora de Fundos Garantidores', 1, 0, 'ABGF', 0, 0, 0, 0, 0, 0, 0),
(89, 'Agência Espacial Brasileira', 1, 0, 'AEB', 0, 0, 0, 0, 0, 0, 0),
(90, 'Agência Nacional de Telecomunicações', 1, 0, 'ANATEL', 0, 0, 0, 0, 0, 0, 0),
(91, 'Agência Nacional do Cinema', 1, 0, 'ANCINE', 0, 0, 0, 0, 0, 0, 0),
(92, 'Agência Nacional de Águas', 1, 0, 'ANA', 0, 0, 0, 0, 0, 0, 0),
(93, 'Agência Nacional de Aviação Civil', 1, 0, 'ANAC', 0, 0, 0, 0, 0, 0, 0),
(94, 'Agência Nacional de Mineração', 1, 0, 'ANM', 0, 0, 0, 0, 0, 0, 0),
(95, 'Agência Nacional de Energia Elétrica', 1, 0, 'ANEEL', 0, 0, 0, 0, 0, 0, 0),
(96, 'Agência Nacional do Petróleo, Gás Natural e Biocombustíveis', 1, 0, 'ANP', 0, 0, 0, 0, 0, 0, 0),
(97, 'Agência Nacional de Saúde Suplementar', 1, 0, 'ANS', 0, 0, 0, 0, 0, 0, 0),
(98, 'Agência Nacional de Transportes Aquaviários', 1, 0, 'ANTAQ', 0, 0, 0, 0, 0, 0, 0),
(99, 'Agência Nacional de Transportes Terrestres', 1, 0, 'ANTT', 0, 0, 0, 0, 0, 0, 0),
(100, 'Agência Nacional de Vigilância Sanitária', 1, 0, 'ANVISA', 0, 0, 0, 0, 0, 0, 0),
(101, 'Centro de Tecnologia Mineral', 2, 0, 'CETEM', 0, 0, 0, 0, 0, 0, 0),
(102, 'Centro de Tecnologias Estratégicas do Nordeste', 2, 0, 'CETENE', 0, 0, 0, 0, 0, 0, 0),
(103, 'Amazonas Geração e Transmissão de Energia S.A.', 3, 0, 'AMAZONAS', 0, 0, 0, 0, 0, 0, 0),
(104, 'Amazônia Azul Tecnologias de Defesa S.A.', 1, 0, 'AMAZUL', 0, 0, 0, 0, 0, 0, 0),
(105, 'BB Tecnologia e Serviços', 3, 0, '', 0, 0, 0, 0, 0, 0, 0),
(106, 'BBTur Viagens e Turismo Ltda', 3, 0, 'BBTur', 0, 0, 0, 0, 0, 0, 0),
(107, 'Companhia Brasileira de Trens Urbanos', 3, 0, 'CBTU', 0, 0, 0, 0, 0, 0, 0),
(108, 'Companhia Docas do Ceará', 3, 0, 'CDC', 0, 0, 0, 0, 0, 0, 0),
(109, 'Companhia Docas do Pará', 3, 0, 'CDP', 0, 0, 0, 0, 0, 0, 0),
(110, 'Companhia Docas do Rio de Janeiro', 3, 0, 'CDRJ', 0, 0, 0, 0, 0, 0, 0),
(111, 'Centrais de Abastecimento de Minas Gerais S.A.', 3, 0, 'CEASA-MG', 0, 0, 0, 0, 0, 0, 0),
(112, 'Companhia Nacional de Abastecimento', 3, 0, 'CONAB', 0, 0, 0, 0, 0, 0, 0),
(113, 'Centrais Elétricas do Norte do Brasil S.A.', 3, 0, 'ELETRONORTE', 0, 0, 0, 0, 0, 0, 0),
(114, 'Eletrobrás Termonuclear S.A.', 3, 0, 'ELETRONUCLEAR', 0, 0, 0, 0, 0, 0, 0),
(115, 'ELETROPAR', 1, 0, 'ELETROPAR', 0, 0, 0, 0, 0, 0, 0),
(116, 'Companhia de Geração e Transmissão de Energia Elétrica do Sul do Brasil', 3, 0, 'ELETROSUL', 0, 0, 0, 0, 0, 0, 0),
(117, 'Empresa Brasileira de Pesquisa Agropecuária', 3, 0, 'EMBRAPA', 0, 0, 0, 0, 0, 0, 0),
(118, 'Empresa Gestora de Ativos', 3, 0, 'EMGEA', 0, 0, 0, 0, 0, 0, 0),
(119, 'Empresa Gerencial de Projetos Navais', 3, 0, 'EMGEPRON', 0, 0, 0, 0, 0, 0, 0),
(120, 'Furnas Centrais Elétricas S.A.', 3, 0, 'FURNAS', 0, 0, 0, 0, 0, 0, 0),
(121, 'Indústria de Material Bélico do Brasil', 3, 0, 'IMBEL', 0, 0, 0, 0, 0, 0, 0),
(122, 'Indústrias Nucleares do Brasil S.A.', 3, 0, 'INB', 0, 0, 0, 0, 0, 0, 0),
(123, 'Nuclebrás Equipamentos Pesados S.A.', 3, 0, 'NUCLEP', 0, 0, 0, 0, 0, 0, 0),
(124, 'Empresa Brasileira de Administração de Petróleo e Gás Natural S.A.', 3, 0, 'Pré-Sal Petróleo S.A', 0, 0, 0, 0, 0, 0, 0),
(125, 'Petrobras Transporte S.A', 3, 0, 'TRANSPETRO', 0, 0, 0, 0, 0, 0, 0),
(126, 'Empresa de Trens Urbanos de Porto Alegre S.A.', 3, 0, 'TRENSURB', 0, 0, 0, 0, 0, 0, 0),
(127, 'Engenharia, Construções e Ferrovias S.A.', 3, 0, 'VALEC', 0, 0, 0, 0, 0, 0, 0),
(128, 'Companhia de Entrepostos e Armazéns Gerais de São Paulo', 3, 0, 'CEAGESP', 0, 0, 0, 0, 0, 0, 0),
(129, 'Empresa Brasileira de Correios e Telégrafos', 3, 0, 'ECT', 0, 0, 0, 0, 0, 0, 0),
(130, 'Advocacia Geral da União', 9, 0, 'AGU', 0, 0, 0, 0, 0, 0, 0),
(131, 'Autoridade Portuária de Santos S.A.', 9, 0, '', 0, 0, 0, 0, 0, 0, 0),
(132, 'Arquivo Nacional', 9, 0, 'AN', 0, 0, 0, 0, 0, 0, 0),
(133, 'Instituto Federal de Educação, Ciência e Tecnologia da Bahia', 4, 0, 'IFBA', 0, 0, 0, 0, 0, 0, 0),
(134, 'Instituto Federal de Educação, Ciência e Tecnologia do Acre', 4, 0, 'IFAC', 0, 0, 0, 0, 0, 0, 0),
(135, 'Instituto Federal de Educação, Ciência e Tecnologia de Alagoas', 4, 0, 'IFAL', 0, 0, 0, 0, 0, 0, 0),
(136, 'Instituto Federal de Educação, Ciência e Tecnologia do Amazonas', 4, 0, 'IFAM', 0, 0, 0, 0, 0, 0, 0),
(137, 'Instituto Federal de Educação, Ciência e Tecnologia do Amapá', 4, 0, 'IFAP', 0, 0, 0, 0, 0, 0, 0),
(138, 'Instituto Federal de Educação, Ciência e Tecnologia de Brasília', 4, 0, 'IFB', 0, 0, 0, 0, 0, 0, 0),
(139, 'Instituto Federal de Educação, Ciência e Tecnologia Baiano', 4, 0, 'IF BAIANO', 0, 0, 0, 0, 0, 0, 0),
(140, 'Instituto Federal de Educação, Ciência e Tecnologia Catarinense', 4, 0, 'IFC', 0, 0, 0, 0, 0, 0, 0),
(141, 'Instituto Federal de Educação, Ciência e Tecnologia do Ceará', 4, 0, 'IFCE', 0, 0, 0, 0, 0, 0, 0),
(142, 'Instituto Federal de Educação, Ciência e Tecnologia Farroupilha', 4, 0, 'IFFAR', 0, 0, 0, 0, 0, 0, 0),
(143, 'Instituto Federal de Educação, Ciência e Tecnologia Fluminense', 4, 0, 'IF FLUMINENSE', 0, 0, 0, 0, 0, 0, 0),
(144, 'Instituto Federal de Educação, Ciência e Tecnologia de Goiás', 4, 0, 'IFG', 0, 0, 0, 0, 0, 0, 0),
(145, 'Instituto Federal de Educação, Ciência e Tecnologia Goiano', 4, 0, 'IF GOIANO', 0, 0, 0, 0, 0, 0, 0),
(146, 'Instituto Federal de Educação, Ciência e Tecnologia do Maranhão', 4, 0, 'IFMA', 0, 0, 0, 0, 0, 0, 0),
(147, 'Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 4, 0, 'IFMG', 0, 0, 0, 0, 0, 0, 0),
(148, 'Instituto Federal de Educação, Ciência e Tecnologia do Sudeste de Minas Gerais', 4, 0, 'IFMGSE', 0, 0, 0, 0, 0, 0, 0),
(149, 'Instituto Federal de Educação, Ciência e Tecnologia do Mato Grosso do Sul', 4, 0, 'IFMS', 0, 0, 0, 0, 0, 0, 0),
(150, 'Instituto Federal de Educação, Ciência e Tecnologia do Mato Grosso', 4, 0, 'IFMT', 0, 0, 0, 0, 0, 0, 0),
(151, 'Instituto Federal de Educação, Ciência e Tecnologia do Norte de Minas Gerais', 4, 0, 'IFNMG', 0, 0, 0, 0, 0, 0, 0),
(152, 'Instituto Federal de Educação, Ciência e Tecnologia do Pará', 4, 0, 'IFPA', 0, 0, 0, 0, 0, 0, 0),
(153, 'Instituto Federal de Educação, Ciência e Tecnologia da Paraíba', 4, 0, 'IFPB', 0, 0, 0, 0, 0, 0, 0),
(154, 'Instituto Federal de Educação, Ciência e Tecnologia de Pernambuco', 4, 0, 'IFPE', 0, 0, 0, 0, 0, 0, 0),
(155, 'Instituto Federal de Educação, Ciência e Tecnologia do Piauí', 4, 0, 'IFPI', 0, 0, 0, 0, 0, 0, 0),
(156, 'Instituto Federal de Educação, Ciência e Tecnologia do Paraná', 4, 0, 'IFPR', 0, 0, 0, 0, 0, 0, 0),
(157, 'Instituto Federal de Educação, Ciência e Tecnologia do Rio de Janeiro', 4, 0, 'IFRJ', 0, 0, 0, 0, 0, 0, 0),
(158, 'Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Norte', 4, 0, 'IFRN', 0, 0, 0, 0, 0, 0, 0),
(159, 'Instituto Federal de Educação, Ciência e Tecnologia de Rondônia', 4, 0, 'IFRO', 0, 0, 0, 0, 0, 0, 0),
(160, 'Instituto Federal de Educação, Ciência e Tecnologia de Roraima', 4, 0, 'IFRR', 0, 0, 0, 0, 0, 0, 0),
(161, 'Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Sul', 4, 0, 'IFRS', 0, 0, 0, 0, 0, 0, 0),
(162, 'Instituto Federal de Educação, Ciência e Tecnologia de Santa Catarina', 4, 0, 'IFSC', 0, 0, 0, 0, 0, 0, 0),
(163, 'Instituto Federal de Educação, Ciência e Tecnologia de São Paulo', 4, 0, 'IFSP', 0, 0, 0, 0, 0, 0, 0),
(164, 'Instituto Federal de Educação, Ciência e Tecnologia do Sertão Pernambucano', 4, 0, 'IFSPE', 0, 0, 0, 0, 0, 0, 0),
(165, 'Instituto Federal de Educação, Ciência e Tecnologia Sul-Rio- Grandense', 4, 0, 'IFSul', 0, 0, 0, 0, 0, 0, 0),
(166, 'Instituto Federal de Educação, Ciência e Tecnologia do Sul de Minas Gerais', 4, 0, 'IFSULDEMINAS', 0, 0, 0, 0, 0, 0, 0),
(167, 'Instituto Federal de Educação, Ciência e Tecnologia do Triângulo Mineiro', 4, 0, 'IFTM', 0, 0, 0, 0, 0, 0, 0),
(168, 'Instituto Federal de Educação, Ciência e Tecnologia do Tocantins', 4, 0, 'IFTO', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `protocolo`
--

CREATE TABLE `protocolo` (
  `codigo` int NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `protocolo`
--

INSERT INTO `protocolo` (`codigo`, `nome`) VALUES
(1, 'NFS – Network File System'),
(2, 'DNS – Domain Name System'),
(3, 'DHCP - Dynamic Host Configuration Protocol'),
(4, 'VPN – Virtual Private Network'),
(5, 'SMTP - Simple Mail Transfer Protocol'),
(6, 'CAS – Central Authentication Service'),
(7, 'RADIUS – Remote Authentication Dial In User Service'),
(8, 'SPF – Sender Policy Framework'),
(9, 'DKIM - DomainKeys Identified Mail'),
(10, 'WebStandards (HTML, CSS, Javascript, SVG, HTTP)'),
(11, 'TEX'),
(12, 'HTML – Hypertext Markup Language'),
(13, 'Javascript (implementação do ECMAScript)'),
(14, 'PWA (Progressive Web Application)'),
(15, 'OAuth'),
(16, 'Let\'s Encrypt');

-- --------------------------------------------------------

--
-- Estrutura da tabela `protocolo_orgao`
--

CREATE TABLE `protocolo_orgao` (
  `codigo_protocolo` int NOT NULL,
  `codigo_orgao` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `software`
--

CREATE TABLE `software` (
  `codigo` int NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `codigo_categoria` int NOT NULL,
  `website` varchar(180) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `codigo_licenca` int NOT NULL,
  `observacoes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `software_orgao`
--

CREATE TABLE `software_orgao` (
  `codigo_software` int NOT NULL,
  `codigo_orgao` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_orgao`
--

CREATE TABLE `tipo_orgao` (
  `codigo` int NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_orgao`
--

INSERT INTO `tipo_orgao` (`codigo`, `nome`) VALUES
(1, 'agência'),
(2, 'centro de pesquisa'),
(3, 'estatal'),
(4, 'instituto federal'),
(5, 'judiciário'),
(6, 'legislativo'),
(7, 'ministério'),
(8, 'universidade'),
(9, 'outro');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria_software`
--
ALTER TABLE `categoria_software`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `licenca`
--
ALTER TABLE `licenca`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `orgao`
--
ALTER TABLE `orgao`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `protocolo`
--
ALTER TABLE `protocolo`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `protocolo_orgao`
--
ALTER TABLE `protocolo_orgao`
  ADD PRIMARY KEY (`codigo_protocolo`,`codigo_orgao`);

--
-- Índices para tabela `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `software_orgao`
--
ALTER TABLE `software_orgao`
  ADD PRIMARY KEY (`codigo_software`,`codigo_orgao`);

--
-- Índices para tabela `tipo_orgao`
--
ALTER TABLE `tipo_orgao`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria_software`
--
ALTER TABLE `categoria_software`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT de tabela `licenca`
--
ALTER TABLE `licenca`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de tabela `orgao`
--
ALTER TABLE `orgao`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de tabela `protocolo`
--
ALTER TABLE `protocolo`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `software`
--
ALTER TABLE `software`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1027;

--
-- AUTO_INCREMENT de tabela `tipo_orgao`
--
ALTER TABLE `tipo_orgao`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
