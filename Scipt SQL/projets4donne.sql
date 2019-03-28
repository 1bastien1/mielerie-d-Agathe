-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 27 mars 2019 à 13:24
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projets4`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`NOM`, `PRIXU`, `description`, `image_name`, `updated_at`, `nArticle`) VALUES
('Miel jaune', 45.00, '<p>Miel de <strong>bonne</strong> <em>facture</em></p>\r\n\r\n<p>&nbsp;</p>', '5c6c0ac31d084_miel.png', '2019-02-19 13:55:15', 1),
('Miel jaune', 56.00, 'jkdhgkjfd', '5c98d5503b731_miel.png', '2019-03-25 13:19:12', 2);

-- --------------------------------------------------------

--
-- Structure de la table `articleblog`
--

--
-- Déchargement des données de la table `articleblog`
--

INSERT INTO `articleblog` (`TITRE`, `CORPSDETEXTE`, `DATEPUB`, `AUTEUR`, `id`) VALUES
('APIDAYS', '<p><em><strong>Je m&#39;aper&ccedil;ois que je d&eacute;laisse le blog au profit de la page Facebook, donc je reviens donner des nouvelles des avettes et de la miellerie.</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ces derniers jours ont &eacute;t&eacute; assez intense avec l&#39;organisation des apidays, 3 jours plac&eacute;s donc sous le signe de l&#39;abeille et l&#39;occasion pour de nombreux apiculteurs d&#39;expliquer notre m&eacute;tiers mais aussi de faire d&eacute;couvrir le monde fascinant de l&#39;abeille et les menaces qui p&egrave;sent sur elles.</p>\r\n\r\n<p><img alt=\"\" height=\"132\" src=\"/userfiles/files/ob_976891_gdgt4686-1.jpg\" width=\"132\" /></p>\r\n\r\n<p>Apr&egrave;s avoir install&eacute; des ruches sur le toit du magasin Carrefour de Laon (02), le directeur de celui-ci m&#39;a propos&eacute; d&#39;animer un stand avec 2 autres apiculteurs</p>\r\n\r\n<p>&nbsp;Au final beaucoup de monde, beaucoup de discussion avec les clients de cette grande surface et un constat : de plus en plus de personnes se sentent concern&eacute;es par les difficult&eacute;s que rencontre nos abeilles (monoculture, disparition des bocages, usage inappropri&eacute; de pesticide et immobilisme du minist&egrave;re de l&#39;agriculture face au lobbying des chimistes...).</p>\r\n\r\n<p>Mais le bilan est malgr&eacute; tout positif car on constate une prise de conscience au niveau de l&rsquo;acte d&rsquo;achat et j&rsquo;ai fait la connaissance de deux apiculteurs passionn&eacute;s tout comme moi et s&ucirc;rement des projets future germeront de cette rencontre</p>\r\n\r\n<p>Merci encore aux &eacute;quipes carrefour et &agrave; son directeur pour ces journ&eacute;es de rencontre et d&rsquo;&eacute;changes</p>', '2019-02-22', 'Louis', 1),
('Production de miel', '<p><strong><em>Il &eacute;tait une fois....</em></strong></p>\r\n\r\n<p>Coucou</p>', '2019-02-23', 'Louis', 2),
('Production de mielll', '<p>hrjkzehrjkzehrzhr</p>', '2019-02-23', 'Louis', 3);

-- --------------------------------------------------------

--
-- Structure de la table `articleblog_tag`
--

--
-- Déchargement des données de la table `articleblog_tag`
--

INSERT INTO `articleblog_tag` (`articleblog_id`, `tag_id`) VALUES
(1, 16),
(1, 17),
(2, 17);

--
-- Déclencheurs `articleblog_tag`
--
DROP TRIGGER IF EXISTS `nb_participation`;
DELIMITER $$
CREATE TRIGGER `nb_participation` AFTER INSERT ON `articleblog_tag` FOR EACH ROW BEGIN
  SELECT COUNT(tag_id) INTO @v_nbutil
	FROM articleblog_tag a
	WHERE a.tag_id = NEW.tag_id;

  UPDATE tag
  SET Utilisation = @v_nbutil
  WHERE id = NEW.tag_id;
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `nb_participation_delete`;
DELIMITER $$
CREATE TRIGGER `nb_participation_delete` AFTER DELETE ON `articleblog_tag` FOR EACH ROW BEGIN
  SELECT COUNT(tag_id) INTO @v_nbutil
	FROM articleblog_tag a
	WHERE a.tag_id = OLD.tag_id;

  UPDATE tag
  SET Utilisation = @v_nbutil
  WHERE id = OLD.tag_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--
--
-- Déchargement des données de la table `fos_user`
--
-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

-- --------------------------------------------------------

--
-- Structure de la table `precommandes`
--

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `TAGLIB`, `TAGCOLOR`, `Utilisation`) VALUES
(16, 'Miel', 'is-primary', 1),
(17, 'Carrefour', 'is-warning', 2),
(18, 'Prout', 'is-success', 0);

-- --------------------------------------------------------

--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
