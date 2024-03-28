-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql101.infinityfree.com
-- Generation Time: Mar 28, 2024 at 02:51 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: ``
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `trailer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `image`, `status`, `trailer`) VALUES
(1, 'stray', 'stray.jpg', 'STORY COMPLETED', 'https://youtu.be/u84hRUQlaio'),
(2, 'marvels spiderman remastered', 'marvelsspidermanremastered.jpg', 'STORY COMPLETED', 'https://youtu.be/1E051WtpyWg'),
(3, 'martha is dead', 'marthaisdead.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/vFsjJWX3TRo'),
(4, 'madison', 'madison.jpg', 'STORY COMPLETED', 'https://youtu.be/noflcqYIfuc'),
(5, 'god of war', 'godofwar.jpg', 'STORY COMPLETED', 'https://youtu.be/HqQMh_tij0c'),
(6, 'ghost wire tokyo', 'ghostwiretokyo.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/l4tkNjJsOvY'),
(7, 'f1 22', 'f122.jpg', 'JUST PLAYED', 'https://youtu.be/YgOi41qmlc4'),
(8, 'far cry 6', 'farcry6.jpg', 'STORY COMPLETED', 'https://youtu.be/-IJuKT1mHO8'),
(9, 'forza horizon 5', 'forzahorizon5.jpg', 'JUST PLAYED', 'https://youtu.be/FYH9n37B7Yw'),
(10, 'grand theft auto 3 the definitive edition', 'grandtheftauto3thedefinitveedition.jpg', 'STORY COMPLETED', 'https://youtu.be/lEQ4XD8KuUs'),
(11, 'grand theft auto san andreas the definitive edition', 'grandtheftautosanandreasthedefinitiveedition.jpg', 'STORY COMPLETED', 'https://youtu.be/H4rYVsJ4v9Y'),
(12, 'grand theft auto vice city the definitive edition', 'grandtheftautovicecitythedefinitiveedition.jpg', 'STORY COMPLETED', 'https://youtu.be/QYAMp13Yi04'),
(13, 'halo infinite', 'haloinfinite.jpg', 'STORY COMPLETED', 'https://youtu.be/Fmdb-KmlzD8'),
(14, 'it takes two', 'ittakestwo.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/ohClxMmNLQQ'),
(15, 'kena bridge of spirits', 'kenabridgeofspirits.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/OxzWlIbnp3U'),
(16, 'life is strange true colors', 'lifeisstrangetruecolors.jpg', 'STORY COMPLETED', 'https://youtu.be/PNt1aSkYfWk'),
(17, 'lost in random', 'lostinrandom.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/QdM8pFtjtcI'),
(18, 'marvels guardians of the galaxy', 'marvelsguardiansofthegalaxy.jpg', 'STORY COMPLETED', 'https://youtu.be/3PnAnIT4f68'),
(19, 'outriders', 'outriders.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/8iQnuJxfj-c'),
(20, 'resident evil village', 'residentevilvillage.jpg', 'STORY COMPLETED', 'https://youtu.be/dRpXEc-EJow'),
(21, 'the dark pictures anthology house of ashes', 'thedarkpicturesanthologyhouseofashes.jpg', 'STORY COMPLETED', 'https://youtu.be/QBZgZdC989c'),
(22, 'the medium', 'themedium.jpg', 'STORY COMPLETED', 'https://youtu.be/iJCE9umarQ0'),
(23, 'valheim', 'valheim.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/5mHRJ1KFe20'),
(24, 'world war z', 'worldwarz.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/YZ3Dx4tfirE'),
(25, 'art of rally', 'artofrally.jpg', 'JUST PLAYED', 'https://youtu.be/rQDq59aNRyU'),
(26, 'assassins creed valhalla', 'assassinscreedvalhalla.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/ssrNcwxALS4'),
(27, 'call of duty black ops cold war', 'callofdutyblackopscoldwar.jpg', 'JUST PLAYED', 'https://youtu.be/aTS9n_m7TW0'),
(28, 'call of duty modern warfare 2 remastered', 'callofdutymodernwarfare2remastered.jpg', 'STORY COMPLETED', 'https://youtu.be/x993FRC4rXA'),
(29, 'call of duty warzone', 'callofdutywarzone.jpg', 'JUST PLAYED', 'https://youtu.be/0E44DClsX5Q'),
(30, 'crysis remastered', 'crysisremastered.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/u6gsOQ8HZAU'),
(31, 'cyberpunk 2077', 'cyberpunk2077.jpg', 'STORY COMPLETED', 'https://youtu.be/8X2kIfS6fb8'),
(32, 'death stranding', 'deathstranding.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/piIgkJWDuQg'),
(33, 'doom eternal', 'doometernal.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/FkklG9MA0vM'),
(34, 'fall guys', 'fallguys.jpg', 'JUST PLAYED', 'https://youtu.be/AyADwdiW7rQ'),
(35, 'genshin impact', 'genshinimpact.jpg', 'STORY COMPLETED', 'https://youtu.be/HLUY1nICQRY'),
(36, 'horizon zero dawn', 'horizonzerodawn.jpg', 'STORY COMPLETED', 'https://youtu.be/u4-FCsiF5x4'),
(37, 'mafia definitive edition', 'mafiadefinitiveedition.jpg', 'STORY COMPLETED', 'https://youtu.be/vfwfA_iTOng'),
(38, 'maid of sker', 'maidofsker.jpg', 'STORY COMPLETED', 'https://youtu.be/YmNqqsci7N4'),
(39, 'marvels avengers', 'marvelsavengers.jpg', 'STORY COMPLETED', 'https://youtu.be/LDBojdBAjXU'),
(40, 'minecraft dungeons', 'minecraftdungeons.jpg', 'STORY COMPLETED', 'https://youtu.be/KCbE47v1qVk'),
(41, 'moving out', 'movingout.jpg', 'JUST PLAYED', 'https://youtu.be/XIUIfAv5OLI'),
(42, 'resident evil 3 remake', 'residentevil3remake.jpg', 'STORY COMPLETED', 'https://youtu.be/9LrLM4Hvr9U'),
(43, 'rogue company', 'roguecompany.jpg', 'JUST PLAYED', 'https://youtu.be/uqu8jtrNR_0'),
(44, 'tell me why', 'tellmewhy.jpg', 'STORY COMPLETED', 'https://youtu.be/JVXqGQC9J2o'),
(45, 'the dark pictures anthology little hope', 'thedarkpicturesanthologylittlehope.jpg', 'STORY COMPLETED', 'https://youtu.be/XTV6xbsOQPA'),
(46, 'valorant', 'valorant.jpg', 'JUST PLAYED', 'https://youtu.be/e_E9W2vsRbQ'),
(47, 'visage', 'visage.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/dY8AVTFbR9o'),
(48, 'watch dogs legion', 'watchdogslegion.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/srXrGKGAU20'),
(49, 'borderlands 3', 'borderlands3.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/gjLQ2Uj4OPw'),
(50, 'mad games tycoon 2', 'madgamestycoon2.jpg', 'JUST PLAYED', 'https://youtu.be/3z2f9_zsAsc'),
(51, 'saints row 3 remastered', 'saintsrow3remastered.jpg', 'STORY COMPLETED', 'https://youtu.be/rL85F0TXCkQ'),
(52, 'apex legends', 'apexlegends.jpg', 'JUST PLAYED', 'https://youtu.be/innmNewjkuk'),
(53, 'a plague tale innocence', 'aplaguetaleinnocence.jpg', 'STORY COMPLETED', 'https://youtu.be/CtP6mNeN6yE'),
(54, 'beyond two souls', 'beyondtwosouls.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/MtEoS0MaNyA'),
(55, 'call of duty modern warfare', 'callofdutymodernwarfare.jpg', 'STORY COMPLETED', 'https://youtu.be/f7bryYlI95Y'),
(56, 'control', 'control.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/PT5yMfC9LQM'),
(57, 'detroit become human', 'detroitbecomehuman.jpg', 'STORY COMPLETED', 'https://youtu.be/8a-EObAhYrg'),
(58, 'far cry new dawn', 'farcrynewdawn.jpg', 'STORY COMPLETED', 'https://youtu.be/6eLHk2Eug78'),
(59, 'gears 5', 'gears5.jpg', 'STORY COMPLETED', 'https://youtu.be/SEpWlFfpEkU'),
(60, 'green hell', 'greenhell.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/QF28UilEFcU'),
(61, 'heavy rain', 'heavyrain.jpg', 'STORY COMPLETED', 'https://youtu.be/YVYiJ3VSp60'),
(62, 'metro exodus', 'metroexodus.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/fbbqlvuovQ0'),
(63, 'need for speed heat', 'needforspeedheat.jpg', 'STORY COMPLETED', 'https://youtu.be/p4Q3uh2RaZo'),
(64, 'pc building simulator', 'pcbuildingsimulator.jpg', 'JUST PLAYED', 'https://youtu.be/rq9IAJ7YulQ'),
(65, 'red dead redemption 2', 'reddeadredemption2.jpg', 'STORY COMPLETED', 'https://youtu.be/SXvQ1nK4oxk'),
(66, 'resident evil 2 remake', 'residentevil2remake.jpg', 'STORY COMPLETED', 'https://youtu.be/u3wS-Q2KBpk'),
(67, 'star wars jedi fallen order', 'starwarsjedifallenorder.jpg', 'STORY COMPLETED', 'https://youtu.be/0GLbwkfhYZk'),
(68, 'the dark pictures man of medan', 'thedarkpicturesmanofmedan.jpg', 'STORY COMPLETED', 'https://youtu.be/OQvo4-Ly-sA'),
(69, 'untitled goose game', 'untitledgoosegame.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/9LL2AtHo1gk'),
(70, 'wolfenstein young blood', 'wolfensteinyoungblood.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/Zjwo5EJxn9E'),
(71, 'among us', 'amongus.jpg', 'JUST PLAYED', 'https://youtu.be/NSJ4cESNQfE'),
(72, 'assassins creed odyssey', 'assassinscreedodyssey.jpg', 'STORY COMPLETED', 'https://youtu.be/s_SJZSAtLBA'),
(73, 'a way out', 'awayout.jpg', 'STORY COMPLETED', 'https://youtu.be/yGZGSdgJVPM'),
(74, 'battlefield 5', 'battlefield5.jpg', 'STORY COMPLETED', 'https://youtu.be/fb1MR85XFOc'),
(75, 'f1 2018', 'f12018.jpg', 'JUST PLAYED', 'https://youtu.be/iyz9xU-h9Ms'),
(76, 'far cry 5', 'farcry5.jpg', 'STORY COMPLETED', 'https://youtu.be/Kdaoe4hbMso'),
(77, 'forza horizon 4', 'forzahorizon4.jpg', 'JUST PLAYED', 'https://youtu.be/5xy4n73WOMM'),
(78, 'just cause 4', 'justcause4.jpg', 'STORY COMPLETED', 'https://youtu.be/Lfek7Kcq16g'),
(79, 'life is strange 2', 'lifeisstrange2.jpg', 'STORY COMPLETED', 'https://youtu.be/1xYpXzqmk8Y'),
(80, 'overcooked 2', 'overcooked2.jpg', 'JUST PLAYED', 'https://youtu.be/gEjbXb_eZcs'),
(81, 'shadow of the tomb raider', 'shadowofthetombraider.jpg', 'STORY COMPLETED', 'https://youtu.be/XYtyeqVQnRI'),
(82, 'the awesome adventures of captain spirit', 'theawesomeadventuresofcaptainspirit.jpg', 'STORY COMPLETED', 'https://youtu.be/NHu-MivPC4c'),
(83, 'the crew 2', 'thecrew2.jpg', 'JUST PLAYED', 'https://youtu.be/MXN1nmL-DQU'),
(84, 'the forest', 'theforest.jpg', 'JUST PLAYED', 'https://youtu.be/7mwn5U2PNvk'),
(85, 'unravel two', 'unraveltwo.jpg', 'JUST PLAYED', 'https://youtu.be/j2TmLrTl6gs'),
(86, 'vampyr', 'vampyr.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/mB7eSb12CIo'),
(87, 'ark survival evolved', 'arksurvivalevolved.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/5fIAPcVdZO8'),
(88, 'assassins creed origins', 'assassinscreedorigins.jpg', 'STORY COMPLETED', 'https://youtu.be/cUuKIpCM2o0'),
(89, 'call of duty ww2', 'callofdutyww2.jpg', 'STORY COMPLETED', 'https://youtu.be/D4Q_XYVescc'),
(90, 'cuphead', 'cuphead.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/NN-9SQXoi50'),
(91, 'destiny 2', 'destiny2.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/hdWkpbPTpmE'),
(92, 'for honor', 'forhonor.jpg', 'JUST PLAYED', 'https://youtu.be/y1HkuGUaNBY'),
(93, 'fortnite', 'fortnite.jpg', 'JUST PLAYED', 'https://youtu.be/WJW-bzXZM8M'),
(94, 'hellblade senuas sacrifice', 'hellbladesenuassacrifice.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/fBJ0ifVtK5c'),
(95, 'life is strange before the storm', 'lifeisstrangebeforethestorm.jpg', 'STORY COMPLETED', 'https://youtu.be/bVq3JMcA9qQ'),
(96, 'need for speed payback', 'needforspeedpayback.jpg', 'STORY COMPLETED', 'https://youtu.be/kf2qDAEZc2w'),
(97, 'nioh', 'nioh.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/aMTH7Byv5vE'),
(98, 'outlast 2', 'outlast2.jpg', 'STORY COMPLETED', 'https://youtu.be/MKrUZ36IVAY'),
(99, 'pubg', 'pubg.jpg', 'JUST PLAYED', 'https://youtu.be/URBy9t6e8rY'),
(100, 'resident evil 7 biohazard', 'residentevil7biohazard.jpg', 'STORY COMPLETED', 'https://youtu.be/W1OUs3HwIuo'),
(101, 'star wars battle front 2', 'starwarsbattlefront2.jpg', 'STORY COMPLETED', 'https://youtu.be/Uvmx94cUVEY'),
(102, 'the escapists 2', 'theescapists2.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/QBkwvwmOx3s'),
(103, 'american truck simulator', 'americantrucksimulator.jpg', 'JUST PLAYED', 'https://youtu.be/Yu32OisFgWI'),
(104, 'battlefield 1', 'battlefield1.jpg', 'STORY COMPLETED', 'https://youtu.be/c7nRTF2SowQ'),
(105, 'dead by daylight', 'deadbydaylight.jpg', 'JUST PLAYED', 'https://youtu.be/JGhIXLO3ul8'),
(106, 'dont starve together', 'dontstarvetogether.jpg', 'JUST PLAYED', 'https://youtu.be/bVbyn7c1X6E'),
(107, 'far cry primal', 'farcryprimal.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/LJ2iH57Fs3M'),
(108, 'hitman', 'hitman.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/LVqxMCZ3u6k'),
(109, 'mafia 3', 'mafia3.jpg', 'STORY COMPLETED', 'https://youtu.be/TNiHOpHbCzM'),
(110, 'pico park', 'picopark.jpg', 'STORY COMPLETED', 'https://youtu.be/ohD2JLZr4EU'),
(111, 'stardew valley', 'stardewvalley.jpg', 'JUST PLAYED', 'https://youtu.be/ot7uXNQskhs'),
(112, 'tom clancys the division', 'tomclancysthedivision.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/uElsBflqgYw'),
(113, 'watch dogs 2', 'watchdogs2.jpg', 'STORY COMPLETED', 'https://youtu.be/2GIVVsTKTLg'),
(114, 'adventure capitalist', 'adventurecapitalist.jpg', 'JUST PLAYED', 'https://youtu.be/rldUv258uNI'),
(115, 'assassins creed syndicate', 'assassinscreedsyndicate.jpg', 'STORY COMPLETED', 'https://youtu.be/WTBbwgsyxvg'),
(116, 'batman arkham knight', 'batmanarkhamknight.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/wsf78BS9VE0'),
(117, 'beamng.drive', 'beamng.drive.jpg', 'JUST PLAYED', 'https://youtu.be/7vGYVUCmxeI'),
(118, 'cities skylines', 'citiesskylines.jpg', 'JUST PLAYED', 'https://youtu.be/CpWe03NhXKs'),
(119, 'f1 2015', 'f12015.jpg', 'JUST PLAYED', 'https://youtu.be/o4fsa8P2pTU'),
(120, 'just cause 3', 'justcause3.jpg', 'STORY COMPLETED', 'https://youtu.be/0ND5dYIFkd0'),
(121, 'life is strange', 'lifeisstrange.jpg', 'STORY COMPLETED', 'https://youtu.be/AURVxvIZrmU'),
(122, 'mad max', 'madmax.jpg', 'STORY COMPLETED', 'https://youtu.be/oVWUbmzOGe4'),
(123, 'rise of the tomb raider', 'riseofthetombraider.jpg', 'STORY COMPLETED', 'https://youtu.be/1_FIyNcQSgA'),
(124, 'rocket league', 'rocketleague.jpg', 'JUST PLAYED', 'https://youtu.be/SgSX3gOrj60'),
(125, 'the witcher 3 wild hunt', 'thewitcher3wildhunt.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/c0i88t0Kacs'),
(126, 'tom clancys rainbow six siege', 'tomclancysrainbowsixsiege.jpg', 'JUST PLAYED', 'https://youtu.be/KlbLLRdg9u8'),
(127, 'a story about my uncle', 'astoryaboutmyuncle.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/xiTWAlbH-OU'),
(128, 'far cry 4', 'farcry4.jpg', 'STORY COMPLETED', 'https://youtu.be/6d60v1OErEY'),
(129, 'goat simulator', 'goatsimulator.jpg', 'JUST PLAYED', 'https://youtu.be/dvWGLcdI8o8'),
(130, 'outlast whistleblower', 'outlastwhistleblower.jpg', 'STORY COMPLETED', 'https://youtu.be/-aMJB6BDX4w'),
(131, 'the sims 4', 'thesims4.jpg', 'JUST PLAYED', 'https://youtu.be/z00mK3Pxc8w'),
(132, 'watch dogs', 'watchdogs.jpg', 'STORY COMPLETED', 'https://youtu.be/PFko4Kut39s'),
(133, 'assassins creed 4 black flag', 'assassinscreed4blackflag.jpg', 'STORY COMPLETED', 'https://youtu.be/OwVe4ZNeQZk'),
(134, 'battlefield 4', 'battlefield4.jpg', 'STORY COMPLETED', 'https://youtu.be/P9fK77eE7fs'),
(135, 'grand theft auto 5', 'grandtheftauto5.jpg', 'STORY COMPLETED', 'https://youtu.be/QkkoHAzjnUs'),
(136, 'outlast', 'outlast.jpg', 'STORY COMPLETED', 'https://youtu.be/uKA-IA4locM'),
(137, 'papers please', 'papersplease.jpg', 'JUST PLAYED', 'https://youtu.be/_QP5X6fcukM'),
(138, 'tomb raider', 'tombraider.jpg', 'STORY COMPLETED', 'https://youtu.be/M4SG6DfVvLs'),
(139, 'warframe', 'warframe.jpg', 'JUST PLAYED', 'https://youtu.be/MsbL8lFHrZI'),
(140, 'assassins creed 3', 'assassinscreed3.jpg', 'STORY COMPLETED', 'https://youtu.be/-pUhraVG7Ow'),
(141, 'counter strike global offensive', 'counterstrikeglobaloffensive.jpg', 'JUST PLAYED', 'https://youtu.be/edYCtaNueQY'),
(142, 'euro truck simulator 2 ', 'eurotrucksimulator2.jpg', 'JUST PLAYED', 'https://youtu.be/xlTuC18xVII'),
(143, 'far cry 3', 'farcry3.jpg', 'STORY COMPLETED', 'https://youtu.be/J6gnOVJsCsM'),
(144, 'max payne 3', 'maxpayne3.jpg', 'STORY COMPLETED', 'https://youtu.be/q6a8t3zL70A'),
(145, 'prototype 2', 'prototype2.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/-X0DfqkXeU8'),
(146, 'sleeping dogs', 'sleepingdogs.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/lbGs8AJyT_Y'),
(147, 'assassins creed revelations', 'assassinscreedrevelations.jpg', 'STORY COMPLETED', 'https://youtu.be/8-Ixo7QXw_E'),
(148, 'la noire', 'lanoire.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/ZbPxNGh7dto'),
(149, 'minecraft', 'minecraft.jpg', 'STORY COMPLETED', 'https://youtu.be/MmB9b5njVbA'),
(150, 'portal 2', 'portal2.jpg', 'STORY COMPLETED', 'https://youtu.be/tax4e4hBBZc'),
(151, 'assassins creed brotherhood', 'assassinscreedbrotherhood.jpg', 'STORY COMPLETED', 'https://youtu.be/zzNs4-kRLaE'),
(152, 'mafia 2', 'mafia2.jpg', 'STORY COMPLETED', 'https://youtu.be/S1J3jM8EbSE'),
(153, 'assassins creed 2', 'assassinscreed2.jpg', 'STORY COMPLETED', 'https://youtu.be/_xkCPNECud8'),
(154, 'grand theft auto 4 lost and damned', 'grandtheftauto4lostanddamned.jpg', 'STORY COMPLETED', 'https://youtu.be/FW2sTQuz6l8'),
(155, 'grand theft auto 4 the ballad of gay tony', 'grandtheftauto4theballadofgaytony.jpg', 'STORY COMPLETED', 'https://youtu.be/9EbJcYdt0CI'),
(156, 'league of legends', 'leagueoflegends.jpg', 'JUST PLAYED', 'https://youtu.be/vzHrjOMfHPY'),
(157, 'left 4 dead 2', 'left4dead2.jpg', 'STORY COMPLETED', 'https://youtu.be/N1shYxPdGB8'),
(158, 'mirrors edge', 'mirrorsedge.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/2N1TJP1cxmo'),
(159, 'grand theft auto 4', 'grandtheftauto4.jpg', 'STORY COMPLETED', 'https://youtu.be/Fh2egiqQY8A'),
(160, 'assassins creed', 'assassinscreed.jpg', 'STORY COMPLETED', 'https://youtu.be/RjQ6ZtyXoA0'),
(161, 'team fortress 2', 'teamfortress2.jpg', 'JUST PLAYED', 'https://youtu.be/N7ZafWA2jd8'),
(162, 'bully', 'bully.jpg', 'STORY COMPLETED', 'https://youtu.be/88KNf0MtU14'),
(163, 'grand theft auto vice city', 'grandtheftautovicecity.jpg', 'STORY COMPLETED', 'https://youtu.be/BcqMaYdYow0'),
(164, 'grand theft auto vice city stories', 'grandtheftautovicecitystories.jpg', 'STORY COMPLETED', 'https://youtu.be/iP7fIzDH6nY'),
(165, 'half life', 'halflife.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/wtIp8jOo8_o'),
(166, 'grand theft auto liberty city stories', 'grandtheftautolibertycitystories.jpg', 'STORY COMPLETED', 'https://youtu.be/OHuitRUNDGo'),
(167, 'grand theft auto san andreas', 'grandtheftautosanandreas.jpg', 'STORY COMPLETED', 'https://youtu.be/u_CbHrBbHNQ'),
(168, 'grand theft auto 3', 'grandtheftauto3.jpg', 'STORY COMPLETED', 'https://youtu.be/WUi3davvBmM'),
(169, 'assassins creed rogue', 'assassinscreedrogue.jpg', 'STORY COMPLETED', 'https://youtu.be/bjSy5kF6io0'),
(170, 'assassins creed unity', 'assassinscreedunity.jpg', 'STORY COMPLETED', 'https://youtu.be/xzCEdSKMkdU'),
(171, 'dirt 3', 'dirt3.jpg', 'JUST PLAYED', 'https://youtu.be/PJMAUDXKjwA'),
(172, 'gang beasts', 'gangbeasts.jpg', 'JUST PLAYED', 'https://youtu.be/Vz0BriND6pE'),
(173, 'battlefield 3', 'battlefield3.jpg', 'STORY COMPLETED', 'https://youtu.be/9DM7NsxOS0Q'),
(174, 'counter strike', 'counterstrike.jpg', 'JUST PLAYED', 'https://youtu.be/Q2tHNL4lDVQ'),
(175, 'counter strike source', 'counterstrikesource.jpg', 'JUST PLAYED', 'https://youtu.be/bvI62FUDpKA'),
(176, 'phasmophobia', 'phasmophobia.jpg', 'JUST PLAYED', 'https://youtu.be/sRa9oeo5KiY'),
(177, 'terraria', 'terraria.jpg', 'JUST PLAYED', 'https://youtu.be/w7uOhFTrrq0'),
(178, 'grid 2', 'grid2.jpg', 'JUST PLAYED', 'https://youtu.be/8yKCS8B6_SA'),
(179, 'insaniquarium', 'insaniquarium.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/rUOnWeeY9LI'),
(180, 'lucius', 'lucius.jpg', 'STORY COMPLETED', 'https://youtu.be/kSEnhWGgF2I'),
(181, 'scania truck driving simulator', 'scaniatruckdrivingsimulator.jpg', 'JUST PLAYED', 'https://youtu.be/SAs1INtHjXs'),
(182, 'brawlhalla', 'brawlhalla.jpg', 'JUST PLAYED', 'https://youtu.be/fnd71bqiiW0'),
(183, 'fistful of frags', 'fistfuloffrags.jpg', 'JUST PLAYED', 'https://youtu.be/jnybqFU8-50'),
(184, 'insurgency', 'insurgency.jpg', 'JUST PLAYED', 'https://youtu.be/g6zUUASvEwU'),
(185, 'h1z1', 'h1z1.jpg', 'JUST PLAYED', 'https://youtu.be/_1SSMKlpgL8'),
(186, 'cossacks 3', 'cossacks3.jpg', 'JUST PLAYED', 'https://youtu.be/eKaRWNub9sw'),
(187, 'paladins', 'paladins.jpg', 'JUST PLAYED', 'https://youtu.be/g4WHiMVq1-8'),
(188, 'deceit', 'deceit.jpg', 'JUST PLAYED', 'https://youtu.be/9YeXQZzJ0oM'),
(189, 'last man standing', 'lastmanstanding.jpg', 'JUST PLAYED', 'https://youtu.be/EouPvpmBcyU'),
(190, 'little nightmares', 'littlenightmares.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/aOadxZBsPiA'),
(191, 'mudrunner', 'mudrunner.jpg', 'JUST PLAYED', 'https://youtu.be/IDFTTEoLp1I'),
(192, 'unturned', 'unturned.jpg', 'JUST PLAYED', 'https://youtu.be/DCU1ZFEiEMs'),
(193, 'yooka laylee', 'yookalaylee.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/R57JwzXartU'),
(194, 'car mechanic simulator 2018', 'carmechanicsimulator2018.jpg', 'JUST PLAYED', 'https://youtu.be/LCTF8wKWFSU'),
(195, 'realm royale reforged', 'realmroyalereforged.jpg', 'JUST PLAYED', 'https://youtu.be/mj7Slun6Bgg'),
(196, 'fifa 20', 'fifa20.jpg', 'JUST PLAYED', 'https://youtu.be/9E4HMgh7ZsE'),
(197, 'hand simulator survival', 'handsimulatorsurvival.jpg', 'JUST PLAYED', 'https://youtu.be/YQ6bZ4NwpRY'),
(198, 'hyper scape', 'hyperscape.jpg', 'JUST PLAYED', 'https://youtu.be/xmqgWMijEwY'),
(199, 'resident evil resistance', 'residentevilresistance.jpg', 'JUST PLAYED', 'https://youtu.be/QuK8ZzOHvhY'),
(200, 'battlefield 2042', 'battlefield2042.jpg', 'JUST PLAYED', 'https://youtu.be/ASzOzrB-a9E'),
(201, 'fifa 22', 'fifa22.jpg', 'JUST PLAYED', 'https://youtu.be/SYsi5QuOJNE'),
(202, 'retrowave', 'retrowave.jpg', 'JUST PLAYED', 'https://youtu.be/m9T3oJ0AbMo'),
(203, 'fifa 21', 'fifa21.jpg', 'JUST PLAYED', 'https://youtu.be/tuLAn9adQpI'),
(204, 'twelve minutes', 'twelveminutes.jpg', 'STORY COMPLETED', 'https://youtu.be/uob80LBVgzA'),
(206, 'assetto corsa', 'assettocorsa.jpg', 'JUST PLAYED', 'https://youtu.be/TDFN-E30jhU'),
(207, 'days gone', 'daysgone.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/n95IaELdWDU'),
(208, 'the crew', 'thecrew.jpg', 'STORY COMPLETED', 'https://youtu.be/d4JnshyKOOQ'),
(209, 'call of duty modern warfare 2 2022', 'callofdutymodernwarfare22022.jpg', 'STORY COMPLETED', 'https://youtu.be/r72GP1PIZa0'),
(210, 'assassins creed freedom cry', 'assassinscreedfreedomcry.jpg', 'STORY COMPLETED', 'https://youtu.be/RUVNbI-nr5Y'),
(211, 'assassins creed liberation hd', 'assassinscreedliberationhd.jpg', 'STORY COMPLETED', 'https://youtu.be/zfpfhztOBVI'),
(212, 'fallout 4', 'fallout4.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/X5aJfebzkrM'),
(213, 'mass effect legendary edition', 'masseffectlegendaryedition.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/n8i53TtQ6IQ'),
(214, 'devil may cry 5', 'devilmaycry5.jpg', 'STORY COMPLETED', 'https://youtu.be/KMSGj9Y2T9Q'),
(215, 'mordhau', 'mordhau.jpg', 'JUST PLAYED', 'https://youtu.be/nFpoDlH6Sxs'),
(216, 'elden ring', 'eldenring.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/E3Huy2cdih0'),
(217, 'outlast trials', 'outlasttrials.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/hCgiwsIUI4g'),
(218, 'life for speed', 'lifeforspeed.jpg', 'JUST PLAYED', 'https://youtu.be/4Db3TwNiU9Q'),
(219, 'amnesia the bunker', 'amnesiathebunker.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/5V3Si-MbUao'),
(220, 'a plague tale requiem', 'aplaguetalerequiem.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/qIbzwb8vzNI'),
(221, 'hogwarts legacy', 'hogwartslegacy.jpg', 'STORY NOT COMPLETED', 'https://youtu.be/1O6Qstncpnc'),
(222, 'hotwheels unleashed', 'hotwheelsunleashed.jpg', 'JUST PLAYED', 'https://youtu.be/PlpvJfhac6I'),
(223, 'resident evil 4 remake', 'residentevil4remake.jpg', 'STORY COMPLETED', 'https://youtu.be/j5Ic2z3_xp0'),
(224, 'saints row 2022', 'saintsrow2022.jpg', 'STORY COMPLETED', 'https://youtu.be/YgjzDJA1o1E'),
(225, 'spiderman miles morales', 'spidermanmilesmorales.jpg', 'STORY COMPLETED', 'https://youtu.be/NTunTURbyUU'),
(226, 'the last of us part 1', 'thelastofuspart1.jpg', 'STORY COMPLETED', 'https://youtu.be/WxjeV10H1F0'),
(227, 'uncharted 4 legacy of thieves collection', 'uncharted4legacyofthievescollection.jpg', 'STORY COMPLETED', 'https://www.youtube.com/watch?v=F3Wl-OiZCO4'),
(228, 'the dark pictures anthology the devil in me', 'thedarkpicturesanthologythedevilinme.jpg', 'STORY COMPLETED', 'https://youtu.be/UdeeI4Zvnio?si=WKS04KF3quArmUOh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
