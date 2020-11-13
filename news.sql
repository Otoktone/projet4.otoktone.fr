-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 13 nov. 2020 à 14:22
-- Version du serveur :  5.7.26
-- Version de PHP :  7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `news`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `news` smallint(6) NOT NULL,
  `auteur` varchar(50) NOT NULL,
  `contenu` text NOT NULL,
  `date` datetime NOT NULL,
  `report` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `news`, `auteur`, `contenu`, `date`, `report`) VALUES
(2, 5, 'Otoktone', 'Sublime !', '2020-10-02 16:29:00', 0),
(3, 5, 'Alex', 'Good Job !', '2020-10-02 16:29:14', 0),
(4, 1, 'Otoktone', 'Test', '2020-11-02 17:05:45', 0);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auteur` varchar(30) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `contenu` text NOT NULL,
  `dateAjout` datetime NOT NULL,
  `dateModif` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `auteur`, `titre`, `contenu`, `dateAjout`, `dateModif`) VALUES
(1, 'Jean Forteroche', 'Introduction', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non lacus vitae neque auctor semper. Phasellus quis quam at sem tincidunt varius. Curabitur tincidunt ligula sed sollicitudin pharetra. Nullam rutrum arcu at nisl gravida feugiat. Proin hendrerit iaculis imperdiet. Etiam sem lorem, bibendum vel eros et, aliquet pellentesque erat. Vestibulum ornare lorem vel leo bibendum, eget interdum dui auctor. Nam feugiat quis leo sit amet viverra. Donec eget nisl vel justo tincidunt molestie. Praesent ultricies urna eget iaculis maximus.\r\n\r\nQuisque placerat est non velit eleifend bibendum. Suspendisse a tincidunt odio, eget blandit turpis. Etiam accumsan elementum dapibus. Vestibulum tincidunt magna tortor, ultrices cursus enim ultricies eu. Aenean sit amet leo vitae est volutpat tempor id in arcu. Nullam ultricies dolor eleifend facilisis dictum. Nulla lobortis semper est vitae placerat. Nam in faucibus mauris.\r\n\r\nSuspendisse condimentum purus risus, at mattis elit lobortis ac. Nam luctus mi a tortor consequat lobortis. Duis imperdiet laoreet quam ut semper. Morbi pharetra eu nisl ac ultrices. In neque velit, aliquam nec euismod sit amet, rhoncus eget sapien. Nullam vel sagittis nisi, vitae condimentum ligula. Nulla quis dictum purus, non consequat massa. Fusce vitae fermentum arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum gravida arcu ante. Donec quis orci sit amet mauris pulvinar finibus.\r\n\r\nNulla scelerisque molestie ligula, at pulvinar justo maximus eu. Integer sollicitudin lobortis risus. Aenean lacinia turpis eu arcu dapibus vestibulum. Proin eget diam pulvinar, porttitor turpis ut, pharetra lacus. Nunc efficitur ante ut dolor accumsan iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pulvinar aliquam arcu ut tincidunt. Integer rhoncus nulla eu quam molestie, vitae eleifend tortor feugiat.\r\n\r\nNullam interdum justo odio, vitae commodo lorem viverra eu. Morbi ut tortor ut nulla placerat finibus. Suspendisse eu nisl lorem. Aenean purus ex, congue et finibus non, blandit sit amet nunc. Donec quis suscipit ipsum. Aliquam posuere lacus ac tortor tincidunt tristique. Nunc aliquam, diam eu aliquet faucibus, arcu sapien fermentum mauris, ultricies hendrerit eros est et est. Ut ac finibus nibh. Praesent mauris erat, ullamcorper id risus nec, rutrum ultricies risus. Ut sagittis quam at tincidunt volutpat. Mauris eu dui eget orci vehicula ultrices. Mauris vel porttitor eros. Pellentesque iaculis placerat purus, sed tristique neque volutpat sed.', '2020-09-27 09:37:01', '2020-09-27 09:37:01'),
(2, 'Jean Forteroche', 'Il Ã©tait une fois..', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non lacus vitae neque auctor semper. Phasellus quis quam at sem tincidunt varius. Curabitur tincidunt ligula sed sollicitudin pharetra. Nullam rutrum arcu at nisl gravida feugiat. Proin hendrerit iaculis imperdiet. Etiam sem lorem, bibendum vel eros et, aliquet pellentesque erat. Vestibulum ornare lorem vel leo bibendum, eget interdum dui auctor. Nam feugiat quis leo sit amet viverra. Donec eget nisl vel justo tincidunt molestie. Praesent ultricies urna eget iaculis maximus.\r\n\r\nQuisque placerat est non velit eleifend bibendum. Suspendisse a tincidunt odio, eget blandit turpis. Etiam accumsan elementum dapibus. Vestibulum tincidunt magna tortor, ultrices cursus enim ultricies eu. Aenean sit amet leo vitae est volutpat tempor id in arcu. Nullam ultricies dolor eleifend facilisis dictum. Nulla lobortis semper est vitae placerat. Nam in faucibus mauris.\r\n\r\nSuspendisse condimentum purus risus, at mattis elit lobortis ac. Nam luctus mi a tortor consequat lobortis. Duis imperdiet laoreet quam ut semper. Morbi pharetra eu nisl ac ultrices. In neque velit, aliquam nec euismod sit amet, rhoncus eget sapien. Nullam vel sagittis nisi, vitae condimentum ligula. Nulla quis dictum purus, non consequat massa. Fusce vitae fermentum arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum gravida arcu ante. Donec quis orci sit amet mauris pulvinar finibus.\r\n\r\nNulla scelerisque molestie ligula, at pulvinar justo maximus eu. Integer sollicitudin lobortis risus. Aenean lacinia turpis eu arcu dapibus vestibulum. Proin eget diam pulvinar, porttitor turpis ut, pharetra lacus. Nunc efficitur ante ut dolor accumsan iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pulvinar aliquam arcu ut tincidunt. Integer rhoncus nulla eu quam molestie, vitae eleifend tortor feugiat.\r\n\r\nNullam interdum justo odio, vitae commodo lorem viverra eu. Morbi ut tortor ut nulla placerat finibus. Suspendisse eu nisl lorem. Aenean purus ex, congue et finibus non, blandit sit amet nunc. Donec quis suscipit ipsum. Aliquam posuere lacus ac tortor tincidunt tristique. Nunc aliquam, diam eu aliquet faucibus, arcu sapien fermentum mauris, ultricies hendrerit eros est et est. Ut ac finibus nibh. Praesent mauris erat, ullamcorper id risus nec, rutrum ultricies risus. Ut sagittis quam at tincidunt volutpat. Mauris eu dui eget orci vehicula ultrices. Mauris vel porttitor eros. Pellentesque iaculis placerat purus, sed tristique neque volutpat sed.', '2020-09-27 09:37:21', '2020-09-27 09:37:21'),
(3, 'Jean Forteroche', 'La vie est un long fleuve tranquille', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non lacus vitae neque auctor semper. Phasellus quis quam at sem tincidunt varius. Curabitur tincidunt ligula sed sollicitudin pharetra. Nullam rutrum arcu at nisl gravida feugiat. Proin hendrerit iaculis imperdiet. Etiam sem lorem, bibendum vel eros et, aliquet pellentesque erat. Vestibulum ornare lorem vel leo bibendum, eget interdum dui auctor. Nam feugiat quis leo sit amet viverra. Donec eget nisl vel justo tincidunt molestie. Praesent ultricies urna eget iaculis maximus.\r\n\r\nQuisque placerat est non velit eleifend bibendum. Suspendisse a tincidunt odio, eget blandit turpis. Etiam accumsan elementum dapibus. Vestibulum tincidunt magna tortor, ultrices cursus enim ultricies eu. Aenean sit amet leo vitae est volutpat tempor id in arcu. Nullam ultricies dolor eleifend facilisis dictum. Nulla lobortis semper est vitae placerat. Nam in faucibus mauris.\r\n\r\nSuspendisse condimentum purus risus, at mattis elit lobortis ac. Nam luctus mi a tortor consequat lobortis. Duis imperdiet laoreet quam ut semper. Morbi pharetra eu nisl ac ultrices. In neque velit, aliquam nec euismod sit amet, rhoncus eget sapien. Nullam vel sagittis nisi, vitae condimentum ligula. Nulla quis dictum purus, non consequat massa. Fusce vitae fermentum arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum gravida arcu ante. Donec quis orci sit amet mauris pulvinar finibus.\r\n\r\nNulla scelerisque molestie ligula, at pulvinar justo maximus eu. Integer sollicitudin lobortis risus. Aenean lacinia turpis eu arcu dapibus vestibulum. Proin eget diam pulvinar, porttitor turpis ut, pharetra lacus. Nunc efficitur ante ut dolor accumsan iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pulvinar aliquam arcu ut tincidunt. Integer rhoncus nulla eu quam molestie, vitae eleifend tortor feugiat.\r\n\r\nNullam interdum justo odio, vitae commodo lorem viverra eu. Morbi ut tortor ut nulla placerat finibus. Suspendisse eu nisl lorem. Aenean purus ex, congue et finibus non, blandit sit amet nunc. Donec quis suscipit ipsum. Aliquam posuere lacus ac tortor tincidunt tristique. Nunc aliquam, diam eu aliquet faucibus, arcu sapien fermentum mauris, ultricies hendrerit eros est et est. Ut ac finibus nibh. Praesent mauris erat, ullamcorper id risus nec, rutrum ultricies risus. Ut sagittis quam at tincidunt volutpat. Mauris eu dui eget orci vehicula ultrices. Mauris vel porttitor eros. Pellentesque iaculis placerat purus, sed tristique neque volutpat sed.', '2020-09-27 09:38:20', '2020-09-27 09:38:20'),
(4, 'Jean Forteroche', 'Inception', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non lacus vitae neque auctor semper. Phasellus quis quam at sem tincidunt varius. Curabitur tincidunt ligula sed sollicitudin pharetra. Nullam rutrum arcu at nisl gravida feugiat. Proin hendrerit iaculis imperdiet. Etiam sem lorem, bibendum vel eros et, aliquet pellentesque erat. Vestibulum ornare lorem vel leo bibendum, eget interdum dui auctor. Nam feugiat quis leo sit amet viverra. Donec eget nisl vel justo tincidunt molestie. Praesent ultricies urna eget iaculis maximus.\r\n\r\nQuisque placerat est non velit eleifend bibendum. Suspendisse a tincidunt odio, eget blandit turpis. Etiam accumsan elementum dapibus. Vestibulum tincidunt magna tortor, ultrices cursus enim ultricies eu. Aenean sit amet leo vitae est volutpat tempor id in arcu. Nullam ultricies dolor eleifend facilisis dictum. Nulla lobortis semper est vitae placerat. Nam in faucibus mauris.\r\n\r\nSuspendisse condimentum purus risus, at mattis elit lobortis ac. Nam luctus mi a tortor consequat lobortis. Duis imperdiet laoreet quam ut semper. Morbi pharetra eu nisl ac ultrices. In neque velit, aliquam nec euismod sit amet, rhoncus eget sapien. Nullam vel sagittis nisi, vitae condimentum ligula. Nulla quis dictum purus, non consequat massa. Fusce vitae fermentum arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum gravida arcu ante. Donec quis orci sit amet mauris pulvinar finibus.\r\n\r\nNulla scelerisque molestie ligula, at pulvinar justo maximus eu. Integer sollicitudin lobortis risus. Aenean lacinia turpis eu arcu dapibus vestibulum. Proin eget diam pulvinar, porttitor turpis ut, pharetra lacus. Nunc efficitur ante ut dolor accumsan iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pulvinar aliquam arcu ut tincidunt. Integer rhoncus nulla eu quam molestie, vitae eleifend tortor feugiat.\r\n\r\nNullam interdum justo odio, vitae commodo lorem viverra eu. Morbi ut tortor ut nulla placerat finibus. Suspendisse eu nisl lorem. Aenean purus ex, congue et finibus non, blandit sit amet nunc. Donec quis suscipit ipsum. Aliquam posuere lacus ac tortor tincidunt tristique. Nunc aliquam, diam eu aliquet faucibus, arcu sapien fermentum mauris, ultricies hendrerit eros est et est. Ut ac finibus nibh. Praesent mauris erat, ullamcorper id risus nec, rutrum ultricies risus. Ut sagittis quam at tincidunt volutpat. Mauris eu dui eget orci vehicula ultrices. Mauris vel porttitor eros. Pellentesque iaculis placerat purus, sed tristique neque volutpat sed.', '2020-09-27 09:38:34', '2020-09-27 09:38:34'),
(5, 'Jean Forteroche', 'Conclusion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non lacus vitae neque auctor semper. Phasellus quis quam at sem tincidunt varius. Curabitur tincidunt ligula sed sollicitudin pharetra. Nullam rutrum arcu at nisl gravida feugiat. Proin hendrerit iaculis imperdiet. Etiam sem lorem, bibendum vel eros et, aliquet pellentesque erat. Vestibulum ornare lorem vel leo bibendum, eget interdum dui auctor. Nam feugiat quis leo sit amet viverra. Donec eget nisl vel justo tincidunt molestie. Praesent ultricies urna eget iaculis maximus.\r\n\r\nQuisque placerat est non velit eleifend bibendum. Suspendisse a tincidunt odio, eget blandit turpis. Etiam accumsan elementum dapibus. Vestibulum tincidunt magna tortor, ultrices cursus enim ultricies eu. Aenean sit amet leo vitae est volutpat tempor id in arcu. Nullam ultricies dolor eleifend facilisis dictum. Nulla lobortis semper est vitae placerat. Nam in faucibus mauris.\r\n\r\nSuspendisse condimentum purus risus, at mattis elit lobortis ac. Nam luctus mi a tortor consequat lobortis. Duis imperdiet laoreet quam ut semper. Morbi pharetra eu nisl ac ultrices. In neque velit, aliquam nec euismod sit amet, rhoncus eget sapien. Nullam vel sagittis nisi, vitae condimentum ligula. Nulla quis dictum purus, non consequat massa. Fusce vitae fermentum arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum gravida arcu ante. Donec quis orci sit amet mauris pulvinar finibus.\r\n\r\nNulla scelerisque molestie ligula, at pulvinar justo maximus eu. Integer sollicitudin lobortis risus. Aenean lacinia turpis eu arcu dapibus vestibulum. Proin eget diam pulvinar, porttitor turpis ut, pharetra lacus. Nunc efficitur ante ut dolor accumsan iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pulvinar aliquam arcu ut tincidunt. Integer rhoncus nulla eu quam molestie, vitae eleifend tortor feugiat.\r\n\r\nNullam interdum justo odio, vitae commodo lorem viverra eu. Morbi ut tortor ut nulla placerat finibus. Suspendisse eu nisl lorem. Aenean purus ex, congue et finibus non, blandit sit amet nunc. Donec quis suscipit ipsum. Aliquam posuere lacus ac tortor tincidunt tristique. Nunc aliquam, diam eu aliquet faucibus, arcu sapien fermentum mauris, ultricies hendrerit eros est et est. Ut ac finibus nibh. Praesent mauris erat, ullamcorper id risus nec, rutrum ultricies risus. Ut sagittis quam at tincidunt volutpat. Mauris eu dui eget orci vehicula ultrices. Mauris vel porttitor eros. Pellentesque iaculis placerat purus, sed tristique neque volutpat sed.', '2020-09-27 09:38:43', '2020-09-27 09:38:43');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
