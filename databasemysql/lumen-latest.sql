-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2016 at 09:44 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen`
--

-- --------------------------------------------------------

--
-- Table structure for table `ofExtComponentConf`
--

CREATE TABLE `ofExtComponentConf` (
  `subdomain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wildcard` tinyint(4) NOT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofGroup`
--

CREATE TABLE `ofGroup` (
  `groupName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofGroupProp`
--

CREATE TABLE `ofGroupProp` (
  `groupName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `propValue` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofGroupUser`
--

CREATE TABLE `ofGroupUser` (
  `groupName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `administrator` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofID`
--

CREATE TABLE `ofID` (
  `idType` int(11) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofID`
--

INSERT INTO `ofID` (`idType`, `id`) VALUES
(18, 701),
(19, 516),
(23, 1),
(25, 13),
(26, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ofMucAffiliation`
--

CREATE TABLE `ofMucAffiliation` (
  `roomID` bigint(20) NOT NULL,
  `jid` text COLLATE utf8_unicode_ci NOT NULL,
  `affiliation` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofMucConversationLog`
--

CREATE TABLE `ofMucConversationLog` (
  `roomID` bigint(20) NOT NULL,
  `sender` text COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logTime` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofMucMember`
--

CREATE TABLE `ofMucMember` (
  `roomID` bigint(20) NOT NULL,
  `jid` text COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faqentry` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofMucRoom`
--

CREATE TABLE `ofMucRoom` (
  `serviceID` bigint(20) NOT NULL,
  `roomID` bigint(20) NOT NULL,
  `creationDate` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `modificationDate` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `naturalName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lockedDate` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `emptyDate` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canChangeSubject` tinyint(4) NOT NULL,
  `maxUsers` int(11) NOT NULL,
  `publicRoom` tinyint(4) NOT NULL,
  `moderated` tinyint(4) NOT NULL,
  `membersOnly` tinyint(4) NOT NULL,
  `canInvite` tinyint(4) NOT NULL,
  `roomPassword` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canDiscoverJID` tinyint(4) NOT NULL,
  `logEnabled` tinyint(4) NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rolesToBroadcast` tinyint(4) NOT NULL,
  `useReservedNick` tinyint(4) NOT NULL,
  `canChangeNick` tinyint(4) NOT NULL,
  `canRegister` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofMucRoomProp`
--

CREATE TABLE `ofMucRoomProp` (
  `roomID` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `propValue` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofMucService`
--

CREATE TABLE `ofMucService` (
  `serviceID` bigint(20) NOT NULL,
  `subdomain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isHidden` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofMucService`
--

INSERT INTO `ofMucService` (`serviceID`, `subdomain`, `description`, `isHidden`) VALUES
(1, 'conference', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofMucServiceProp`
--

CREATE TABLE `ofMucServiceProp` (
  `serviceID` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `propValue` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofMucServiceProp`
--

INSERT INTO `ofMucServiceProp` (`serviceID`, `name`, `propValue`) VALUES
(1, 'sysadmin.jid', 'focus@52.202.183.213');

-- --------------------------------------------------------

--
-- Table structure for table `ofOffline`
--

CREATE TABLE `ofOffline` (
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `messageID` bigint(20) NOT NULL,
  `creationDate` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `messageSize` int(11) NOT NULL,
  `stanza` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofOffline`
--

INSERT INTO `ofOffline` (`username`, `messageID`, `creationDate`, `messageSize`, `stanza`) VALUES
('1091197310947094', 505, '001467272308573', 227, '<message id="jw667-17" to="1091197310947094@52.202.183.213/Smack" type="chat" from="573274006173107@52.202.183.213/Smack"><body>alo</body><thread>1091197310947094@52.202.183.213-573274006173107@52.202.183.213</thread></message>'),
('264791810537022', 506, '001467293838002', 9745, '<message to="264791810537022@52.202.183.213" from="267814590231158@52.202.183.213" id="2d9h3tk4"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.bundles:639207389"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212394" node="eu.siacs.conversations.axolotl.bundles:639207389"><bundle xmlns="eu.siacs.conversations.axolotl"><signedPreKeyPublic signedPreKeyId="23">BWkklGBcrfh6efgEuqvka9SSdiYRj0n/DhvJFU9UglI8\n</signedPreKeyPublic><signedPreKeySignature>qqqnFJDWnfMFOg1YhnLS6ELe4k1RpoXXulvmNF3oWJ7wm6YJTxSitOk+kK7aGz5oPvef0bihQFFp\nPubULQUigw==\n</signedPreKeySignature><identityKey>BUsg5HfiHuF4/7Hgf0k4oR6xCJzitrXw52zsP+R7/vc+\n</identityKey><prekeys><preKeyPublic preKeyId="2293">BS2CYYm5i6ARkjbLpxE584hN00QWphZhVcv0/YQDZy1G\n</preKeyPublic><preKeyPublic preKeyId="2251">Bch1E6rpAD6x1BXPkAAaSVGzRVc34qtVRhXmSgXA3o4h\n</preKeyPublic><preKeyPublic preKeyId="2276">BZaZ0IavCIJHMy3+0b7R/I7X7qY7yh52Dml/l0zV3fFL\n</preKeyPublic><preKeyPublic preKeyId="2281">BQ/vKoZvshALqhN4HK4WnyLrS8pVdpVMdGZDBc2Uv6sw\n</preKeyPublic><preKeyPublic preKeyId="2270">Bbahe+ye76jdc9S3y2+269fSDlppZNX+NRFxtFgTsWYe\n</preKeyPublic><preKeyPublic preKeyId="2219">BZJTWUen9OsB/+c2NBYQl3x3mt84tP9/WbczL0D6wbMV\n</preKeyPublic><preKeyPublic preKeyId="2214">BVisVNqCTaiOZvkgOR4gpZuyqYNbajmZGU9rZj2QcMRC\n</preKeyPublic><preKeyPublic preKeyId="2209">BaUQCbCdQeWRQOV7uvyQ0NQMb8XaE7SQwNxAOQ19ljID\n</preKeyPublic><preKeyPublic preKeyId="2224">BTp45htP2B/965Hwt+gqMnD95r1vdRiqt4hTzMRZ/g5o\n</preKeyPublic><preKeyPublic preKeyId="2229">BWPsSINAHdWHXu/nrmnKXJXDjb63+BLzYEoDXYkfSbQo\n</preKeyPublic><preKeyPublic preKeyId="2239">BTMvqvYpTOlqXwiQUKdDUW/vIAXht2mEvsSqKaO5E3ls\n</preKeyPublic><preKeyPublic preKeyId="2287">BUYPjct/lQdzDauiqaByRac9hiKG1UjALp4DdJux62oW\n</preKeyPublic><preKeyPublic preKeyId="2234">BeGus1Hxv/5fpBxQUOU1GuF7KIu6I/mGXiBTL7n0QMsw\n</preKeyPublic><preKeyPublic preKeyId="2220">BSQv2BNyvvJWemxVDiDjWT5sHXCg6BAPeDaY7aonXCgk\n</preKeyPublic><preKeyPublic preKeyId="2204">BVCxGuduZq1osCh2eynqh8RIOERLcWy/me1cJoR0F8QF\n</preKeyPublic><preKeyPublic preKeyId="2298">BYr1Ws/dNfaPDVdsJzQwGySs1s89oOB/e1FiCEL2Gzs1\n</preKeyPublic><preKeyPublic preKeyId="2223">BT+ddLnEqReOyGoOZQnUw+DdVGvEhnt8tDm8pUg6QWYt\n</preKeyPublic><preKeyPublic preKeyId="2288">Bfha12LZJgzClPOFTTy1JrHxjDV9gpJDQwmdNcjdkyN6\n</preKeyPublic><preKeyPublic preKeyId="2240">BeIyA0yEudmxF3TruNQ2Ox9nnZekNVeTgOMHELXXGJsT\n</preKeyPublic><preKeyPublic preKeyId="2265">BYes2S+nYzXCW88y9m2ZMZSSRfhLDOFo6R7Sau6ruLoS\n</preKeyPublic><preKeyPublic preKeyId="2292">BYmDHSea3wo24UF4vPt35Qccq7kVcVFn0UoPJSGNEMsp\n</preKeyPublic><preKeyPublic preKeyId="2257">BdSTiarcudui6igALKW9ZO+q01e9HAu4MY6P9lV6TbAp\n</preKeyPublic><preKeyPublic preKeyId="2275">BQAvC+OBPr3MeArbr3FZSZ3Z7dMWALtYPOkN5qPnhA9e\n</preKeyPublic><preKeyPublic preKeyId="2252">Bc+IUuuSGAFLJjaz/GTps8ZKQQYimBHZ3y26z2zBlVcl\n</preKeyPublic><preKeyPublic preKeyId="2249">BSjbMvP39zwhwZPuyoAopMrTVhgylAygWDEm5KfoqtUn\n</preKeyPublic><preKeyPublic preKeyId="2296">BUt8JTC8zvctrPNg1wJPaJYHGzPuZ+KCCZ8UHimHhws7\n</preKeyPublic><preKeyPublic preKeyId="2208">BUz4tO/lc6lXCCFPEgk+jC3jCuq8+L/KoneEgPXK3B4J\n</preKeyPublic><preKeyPublic preKeyId="2258">BZeqvcO0EAkLwEuJhmcTS7VzkbtMMxTkO2A+0D/xJUsY\n</preKeyPublic><preKeyPublic preKeyId="2271">BTPokiUT/7+Cb/A/s4jEiQ4thnIge++mrVZv691//qYz\n</preKeyPublic><preKeyPublic preKeyId="2218">Be0BrERsgtF5I1grlyHP7btvPsDck+Mt0uzFkestLoIL\n</preKeyPublic><preKeyPublic preKeyId="2202">BXPO8dWS+5bQSFJkQPRFFYHY5mfXs+mO3Y3Uyye2sBk8\n</preKeyPublic><preKeyPublic preKeyId="2266">BbVBzX+ub8E+HrfgjHXCpD28ITmi7hQYcnmaLV7KQFdT\n</preKeyPublic><preKeyPublic preKeyId="2291">BYHTKwYrzMlTuXmhpATxIM0cJQsqGk1bdWFpdTWoMkRm\n</preKeyPublic><preKeyPublic preKeyId="2286">BRYLvbNYpZTYzVwlmCnM740nJ8hIAu4o9rYZWlutH7Au\n</preKeyPublic><preKeyPublic preKeyId="2235">Bf8jzCUpyXhueHIOgwY/O9hgYOk/qWsMUs1fOnT4CkUG\n</preKeyPublic><preKeyPublic preKeyId="2225">BUGdYyqQ05w0SzjMO1IrE0qkp0COcTmLaaSfdHbZjRl4\n</preKeyPublic><preKeyPublic preKeyId="2277">BchUOUbcTF94CkUUzLiHLDJCHz6mMP93G8GPA4F/aaFW\n</preKeyPublic><preKeyPublic preKeyId="2247">BWYA11jiDqtx1Ev+Cd7hP+hd3fCdHv00EjOL0hIad1R9\n</preKeyPublic><preKeyPublic preKeyId="2253">BQSogfVHjO5sPQVUZSKysF2N1VRBmUJ9TsbxB0Li75YH\n</preKeyPublic><preKeyPublic preKeyId="2213">BeMn07FM3Url0ENTj4/sXkUP+IoHKSvbXWY4amX+a2Mh\n</preKeyPublic><preKeyPublic preKeyId="2248">BYGUG/GdkVvWFqKNjKEffAAkzOvVkTaRNzRUj2rvTrty\n</preKeyPublic><preKeyPublic preKeyId="2230">BcJD42KJX6cr3Fyd5XeL4tvHa5KdLV8s5h5RYDt6rpwO\n</preKeyPublic><preKeyPublic preKeyId="2282">BbTojjVa/DNwyJQ1LmqJvRzllHDIrz5Vf2HWKQI/poMJ\n</preKeyPublic><preKeyPublic preKeyId="2297">BfOCQ+VrRcDaZ6efC/EPzh3reT1KuuRuMMquYlfxPcc4\n</preKeyPublic><preKeyPublic preKeyId="2272">BZc1pPktb12NjgMI3x30v6EOZTWJpDkyXhTfPr00khRf\n</preKeyPublic><preKeyPublic preKeyId="2203">BUpyqVx13bDjYe+d2eOmeQuU3NOzHZxWx6+natTeS9ZG\n</preKeyPublic><preKeyPublic preKeyId="2236">BbkBGZP1F+VN7JNCXKME//qMnn5wIhQhm6aN4M1Mf4Bm\n</preKeyPublic><preKeyPublic preKeyId="2241">BZVRBgXPqD2lTycs5B4Pv0QmoeVxyQ5gqzkRkrGGJ191\n</preKeyPublic><preKeyPublic preKeyId="2232">Bc5EDttPL396agakebt1GmBEtvKr3hJMLdqYywSU559/\n</preKeyPublic><preKeyPublic preKeyId="2242">BS+iI1419ztR5EfQjyqsNd5dhKzsR3qmekzxC/paYw1U\n</preKeyPublic><preKeyPublic preKeyId="2246">BSBSmf3fpjKSQHboMLJ4TjxSlFZvcuPVcFE8sGQog6Ny\n</preKeyPublic><preKeyPublic preKeyId="2267">BZleXHFBKIrHwbVEbF/x3HSwQ49Vma/GZIxx+jAyOP95\n</preKeyPublic><preKeyPublic preKeyId="2222">BfzX2PDbQRVIZZCpaA1WEuC2qCfBiQhtShLR1Zsn3DhD\n</preKeyPublic><preKeyPublic preKeyId="2262">BXMmVf+xGtwPj3nakCRjPxKwjUJi4AiNqnDYY1lfnY4X\n</preKeyPublic><preKeyPublic preKeyId="2212">BX+dpAOqUK94W3qp6zPkkJnCwUknIAWvBH95zYUN3sRu\n</preKeyPublic><preKeyPublic preKeyId="2290">BTAOpf4m44vOM8GOZ8tBhPYkE9M9sbRudafxuyAQypNV\n</preKeyPublic><preKeyPublic preKeyId="2201">BUXSrBfFp84yx8bz2a/37JSJQXLdcTdVeM4fGSJHK3E9\n</preKeyPublic><preKeyPublic preKeyId="2206">BTJIvyy342JsNx5ohFK4GFEfgyame3B5hO7434Yf2LIq\n</preKeyPublic><preKeyPublic preKeyId="2254">BaZ+Y9NJW2iiDgFqKDVv1na2Ck8xXUbhZpA9kffEDFtp\n</preKeyPublic><preKeyPublic preKeyId="2295">BXm/HkOQNqgPswlb3Y86MlXspLkWIMvg+podpAkAN+Mf\n</preKeyPublic><preKeyPublic preKeyId="2273">Bbb2A1Krc+ZQ27Iu4l/LDRLIJaBQ1klPaXTATiv6E9BV\n</preKeyPublic><preKeyPublic preKeyId="2300">BZrJyZLNfl8iCCHolqGlbd35qv8StLtLXUNTnwI7BJwm\n</preKeyPublic><preKeyPublic preKeyId="2259">BbLhwpz+AJcQSI4DIxKwD4plauxUpOOSQHHrUyL0vFlv\n</preKeyPublic><preKeyPublic preKeyId="2237">Bfr2Wiavt4l17vDK4awz/BG6BdJKxQbxLuia7sO/AOhk\n</preKeyPublic><preKeyPublic preKeyId="2217">BWXjPq2k2aOAmuwCXZiGQGZIsu2ApmtvmFFBoxt4IeJU\n</preKeyPublic><preKeyPublic preKeyId="2207">BTQg4tstl5UgIjkY8uLoIa/v/k9WyvBIiTSK0vSjqJZD\n</preKeyPublic><preKeyPublic preKeyId="2260">BQWhamvQuniUcg6YM7S3uyUgKRwM7J4xnus6bSZvumI6\n</preKeyPublic><preKeyPublic preKeyId="2231">BYmHYkJ+8RpT2WZABwXAPlNbYaZqTNEMGuXjG+N5llt0\n</preKeyPublic><preKeyPublic preKeyId="2226">BZvAorIXnN4ph6FB3cgir0m9V/H//4VS2eKLW6muVWo5\n</preKeyPublic><preKeyPublic preKeyId="2285">Bbbyp7vqGepatda1GP+kDs689yhqMMxBju/2kR5xXzJN\n</preKeyPublic><preKeyPublic preKeyId="2268">BQwQthLNdST2McTSytVL+1HV+fgr8KCWYE6+K32zLbIH\n</preKeyPublic><preKeyPublic preKeyId="2278">BdFbSbfnCYiTSzEo/9KeP8pKBFp56v7rB/Q+qAE9aVQP\n</preKeyPublic><preKeyPublic preKeyId="2211">BY2JlGbVpMABLjR0Q3Pvwzp3xrRcVeLOPNghQ/CGC4hP\n</preKeyPublic><preKeyPublic preKeyId="2255">Bd2vxCYOXos3cUILrBwO19KLiGnDBh3wWR5ypB1QVWAw\n</preKeyPublic><preKeyPublic preKeyId="2299">BQAyClLFYA82DRKhN60NhZFoigpGC9ke6kOaiHhatB9x\n</preKeyPublic><preKeyPublic preKeyId="2215">BZkEk4tsILFHuAlCvZBvIjBhpbYaeeV9DwOzNRBnFrpd\n</preKeyPublic><preKeyPublic preKeyId="2205">BUkUwQtK68n0espOl3jGifRmPjEnly+l4l2+Ogcac39w\n</preKeyPublic><preKeyPublic preKeyId="2243">BXzpdETDERbQelPRdGxi64qIe+Fc6ZFtlJMyhAoH8h8M\n</preKeyPublic><preKeyPublic preKeyId="2283">BWI79pzHnZaUBInnOvJwP0h8VH+4Dbg335ZBcDYVwNQv\n</preKeyPublic><preKeyPublic preKeyId="2238">Bb+XwihDVeyzKVdDixgM4Hl8kH+Efk9HQ9P763ZWyAJ3\n</preKeyPublic><preKeyPublic preKeyId="2228">BYb+TmyaEIoAEI/LbnEKdQLra98xc3gSBhmL8U4g8nhc\n</preKeyPublic><preKeyPublic preKeyId="2233">BUv5n14WhS15CjohW+sfJyYWAilKrbtPDUDViSN1SP8X\n</preKeyPublic><preKeyPublic preKeyId="2280">BcJbqkzNXUylPf7L9oXaZ3Hen5wXpW5VzuZBV6WATN9S\n</preKeyPublic><preKeyPublic preKeyId="2263">Bft6xUXikSkVNlU9ULMYnpvh1igTvIoIKE0QZdcPR6RU\n</preKeyPublic><preKeyPublic preKeyId="2284">BUXSDgr2NW9DYRo+wuMgNoRgsCtzrVYrfqIqyDLVeSJZ\n</preKeyPublic><preKeyPublic preKeyId="2289">BYxAkH1Iu1gLKGfOdMGlNVjoGbYQx7fSLUQSnKF8LvMz\n</preKeyPublic><preKeyPublic preKeyId="2244">BToCzSt6RF3SwxButclfeHnqfwKiglpr1s2RSjQvOplI\n</preKeyPublic><preKeyPublic preKeyId="2227">BYptP37fkWj3fAB0eLtjHFBfP7KHR8oovoPhVKDD6O53\n</preKeyPublic><preKeyPublic preKeyId="2279">BR6Cn8H/moHqmE8tZyOgNz/KAm4Fc/p91XZpot3aE3sf\n</preKeyPublic><preKeyPublic preKeyId="2210">BYhKsaSLG8Gkc6XXlU7IkbwHUm6xBrtH4BIdLLgPvdIC\n</preKeyPublic><preKeyPublic preKeyId="2294">BXymTpW1wVEhfa67ZF5plLKanejYTzhjwux0IyvbJkw+\n</preKeyPublic><preKeyPublic preKeyId="2274">BTV3IzjcaQU5bCupCp84byjv9gK/DDPQWQzuJFXpdSN8\n</preKeyPublic><preKeyPublic preKeyId="2264">BSAq820iZI1S58yuSs6uw13nFX7WK3ZZCh95YvhsNIot\n</preKeyPublic><preKeyPublic preKeyId="2250">BSdM+7rg0/QjkmUmWRd/aw4yjDcJrxo+Fwaqmq76pn1t\n</preKeyPublic><preKeyPublic preKeyId="2269">BVY4wH6PfSDUJQiE0COPeastZaYXVQNCZfAgK43NTLkc\n</preKeyPublic><preKeyPublic preKeyId="2245">BWBk7bXF0GJ8lZLAqS70KdzOBquSH3yupl1bqPgbStY6\n</preKeyPublic><preKeyPublic preKeyId="2261">BVNUgc8tXvMJc8QtuJIyCTVJwWubd5/MlhO/SF3X/0gW\n</preKeyPublic><preKeyPublic preKeyId="2256">BVRFtf8m4svCI0U9BEaRI8rOBi9cy3RyqDAOEZwx9+F/\n</preKeyPublic><preKeyPublic preKeyId="2216">BaNV2+oownIuUoJkeHEXf4Zk4smPHsZg79DOSMCnQFMt\n</preKeyPublic><preKeyPublic preKeyId="2221">BfF5hkCe2QhzL1DPb8hyjI2FP3h3sZmoiSXDHggmRlxf\n</preKeyPublic></prekeys></bundle></item></items></event></message>'),
('264791810537022', 510, '001467294022813', 417, '<message to="264791810537022@52.202.183.213" from="267814590231158@52.202.183.213" id="GCRMOpLg"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.devicelist"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212395" node="eu.siacs.conversations.axolotl.devicelist"><list xmlns="eu.siacs.conversations.axolotl"><device id="639207389"/></list></item></items></event></message>'),
('573274006173107', 507, '001467293838012', 9745, '<message to="573274006173107@52.202.183.213" from="267814590231158@52.202.183.213" id="e6teeeGU"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.bundles:639207389"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212394" node="eu.siacs.conversations.axolotl.bundles:639207389"><bundle xmlns="eu.siacs.conversations.axolotl"><signedPreKeyPublic signedPreKeyId="23">BWkklGBcrfh6efgEuqvka9SSdiYRj0n/DhvJFU9UglI8\n</signedPreKeyPublic><signedPreKeySignature>qqqnFJDWnfMFOg1YhnLS6ELe4k1RpoXXulvmNF3oWJ7wm6YJTxSitOk+kK7aGz5oPvef0bihQFFp\nPubULQUigw==\n</signedPreKeySignature><identityKey>BUsg5HfiHuF4/7Hgf0k4oR6xCJzitrXw52zsP+R7/vc+\n</identityKey><prekeys><preKeyPublic preKeyId="2293">BS2CYYm5i6ARkjbLpxE584hN00QWphZhVcv0/YQDZy1G\n</preKeyPublic><preKeyPublic preKeyId="2251">Bch1E6rpAD6x1BXPkAAaSVGzRVc34qtVRhXmSgXA3o4h\n</preKeyPublic><preKeyPublic preKeyId="2276">BZaZ0IavCIJHMy3+0b7R/I7X7qY7yh52Dml/l0zV3fFL\n</preKeyPublic><preKeyPublic preKeyId="2281">BQ/vKoZvshALqhN4HK4WnyLrS8pVdpVMdGZDBc2Uv6sw\n</preKeyPublic><preKeyPublic preKeyId="2270">Bbahe+ye76jdc9S3y2+269fSDlppZNX+NRFxtFgTsWYe\n</preKeyPublic><preKeyPublic preKeyId="2219">BZJTWUen9OsB/+c2NBYQl3x3mt84tP9/WbczL0D6wbMV\n</preKeyPublic><preKeyPublic preKeyId="2214">BVisVNqCTaiOZvkgOR4gpZuyqYNbajmZGU9rZj2QcMRC\n</preKeyPublic><preKeyPublic preKeyId="2209">BaUQCbCdQeWRQOV7uvyQ0NQMb8XaE7SQwNxAOQ19ljID\n</preKeyPublic><preKeyPublic preKeyId="2224">BTp45htP2B/965Hwt+gqMnD95r1vdRiqt4hTzMRZ/g5o\n</preKeyPublic><preKeyPublic preKeyId="2229">BWPsSINAHdWHXu/nrmnKXJXDjb63+BLzYEoDXYkfSbQo\n</preKeyPublic><preKeyPublic preKeyId="2239">BTMvqvYpTOlqXwiQUKdDUW/vIAXht2mEvsSqKaO5E3ls\n</preKeyPublic><preKeyPublic preKeyId="2287">BUYPjct/lQdzDauiqaByRac9hiKG1UjALp4DdJux62oW\n</preKeyPublic><preKeyPublic preKeyId="2234">BeGus1Hxv/5fpBxQUOU1GuF7KIu6I/mGXiBTL7n0QMsw\n</preKeyPublic><preKeyPublic preKeyId="2220">BSQv2BNyvvJWemxVDiDjWT5sHXCg6BAPeDaY7aonXCgk\n</preKeyPublic><preKeyPublic preKeyId="2204">BVCxGuduZq1osCh2eynqh8RIOERLcWy/me1cJoR0F8QF\n</preKeyPublic><preKeyPublic preKeyId="2298">BYr1Ws/dNfaPDVdsJzQwGySs1s89oOB/e1FiCEL2Gzs1\n</preKeyPublic><preKeyPublic preKeyId="2223">BT+ddLnEqReOyGoOZQnUw+DdVGvEhnt8tDm8pUg6QWYt\n</preKeyPublic><preKeyPublic preKeyId="2288">Bfha12LZJgzClPOFTTy1JrHxjDV9gpJDQwmdNcjdkyN6\n</preKeyPublic><preKeyPublic preKeyId="2240">BeIyA0yEudmxF3TruNQ2Ox9nnZekNVeTgOMHELXXGJsT\n</preKeyPublic><preKeyPublic preKeyId="2265">BYes2S+nYzXCW88y9m2ZMZSSRfhLDOFo6R7Sau6ruLoS\n</preKeyPublic><preKeyPublic preKeyId="2292">BYmDHSea3wo24UF4vPt35Qccq7kVcVFn0UoPJSGNEMsp\n</preKeyPublic><preKeyPublic preKeyId="2257">BdSTiarcudui6igALKW9ZO+q01e9HAu4MY6P9lV6TbAp\n</preKeyPublic><preKeyPublic preKeyId="2275">BQAvC+OBPr3MeArbr3FZSZ3Z7dMWALtYPOkN5qPnhA9e\n</preKeyPublic><preKeyPublic preKeyId="2252">Bc+IUuuSGAFLJjaz/GTps8ZKQQYimBHZ3y26z2zBlVcl\n</preKeyPublic><preKeyPublic preKeyId="2249">BSjbMvP39zwhwZPuyoAopMrTVhgylAygWDEm5KfoqtUn\n</preKeyPublic><preKeyPublic preKeyId="2296">BUt8JTC8zvctrPNg1wJPaJYHGzPuZ+KCCZ8UHimHhws7\n</preKeyPublic><preKeyPublic preKeyId="2208">BUz4tO/lc6lXCCFPEgk+jC3jCuq8+L/KoneEgPXK3B4J\n</preKeyPublic><preKeyPublic preKeyId="2258">BZeqvcO0EAkLwEuJhmcTS7VzkbtMMxTkO2A+0D/xJUsY\n</preKeyPublic><preKeyPublic preKeyId="2271">BTPokiUT/7+Cb/A/s4jEiQ4thnIge++mrVZv691//qYz\n</preKeyPublic><preKeyPublic preKeyId="2218">Be0BrERsgtF5I1grlyHP7btvPsDck+Mt0uzFkestLoIL\n</preKeyPublic><preKeyPublic preKeyId="2202">BXPO8dWS+5bQSFJkQPRFFYHY5mfXs+mO3Y3Uyye2sBk8\n</preKeyPublic><preKeyPublic preKeyId="2266">BbVBzX+ub8E+HrfgjHXCpD28ITmi7hQYcnmaLV7KQFdT\n</preKeyPublic><preKeyPublic preKeyId="2291">BYHTKwYrzMlTuXmhpATxIM0cJQsqGk1bdWFpdTWoMkRm\n</preKeyPublic><preKeyPublic preKeyId="2286">BRYLvbNYpZTYzVwlmCnM740nJ8hIAu4o9rYZWlutH7Au\n</preKeyPublic><preKeyPublic preKeyId="2235">Bf8jzCUpyXhueHIOgwY/O9hgYOk/qWsMUs1fOnT4CkUG\n</preKeyPublic><preKeyPublic preKeyId="2225">BUGdYyqQ05w0SzjMO1IrE0qkp0COcTmLaaSfdHbZjRl4\n</preKeyPublic><preKeyPublic preKeyId="2277">BchUOUbcTF94CkUUzLiHLDJCHz6mMP93G8GPA4F/aaFW\n</preKeyPublic><preKeyPublic preKeyId="2247">BWYA11jiDqtx1Ev+Cd7hP+hd3fCdHv00EjOL0hIad1R9\n</preKeyPublic><preKeyPublic preKeyId="2253">BQSogfVHjO5sPQVUZSKysF2N1VRBmUJ9TsbxB0Li75YH\n</preKeyPublic><preKeyPublic preKeyId="2213">BeMn07FM3Url0ENTj4/sXkUP+IoHKSvbXWY4amX+a2Mh\n</preKeyPublic><preKeyPublic preKeyId="2248">BYGUG/GdkVvWFqKNjKEffAAkzOvVkTaRNzRUj2rvTrty\n</preKeyPublic><preKeyPublic preKeyId="2230">BcJD42KJX6cr3Fyd5XeL4tvHa5KdLV8s5h5RYDt6rpwO\n</preKeyPublic><preKeyPublic preKeyId="2282">BbTojjVa/DNwyJQ1LmqJvRzllHDIrz5Vf2HWKQI/poMJ\n</preKeyPublic><preKeyPublic preKeyId="2297">BfOCQ+VrRcDaZ6efC/EPzh3reT1KuuRuMMquYlfxPcc4\n</preKeyPublic><preKeyPublic preKeyId="2272">BZc1pPktb12NjgMI3x30v6EOZTWJpDkyXhTfPr00khRf\n</preKeyPublic><preKeyPublic preKeyId="2203">BUpyqVx13bDjYe+d2eOmeQuU3NOzHZxWx6+natTeS9ZG\n</preKeyPublic><preKeyPublic preKeyId="2236">BbkBGZP1F+VN7JNCXKME//qMnn5wIhQhm6aN4M1Mf4Bm\n</preKeyPublic><preKeyPublic preKeyId="2241">BZVRBgXPqD2lTycs5B4Pv0QmoeVxyQ5gqzkRkrGGJ191\n</preKeyPublic><preKeyPublic preKeyId="2232">Bc5EDttPL396agakebt1GmBEtvKr3hJMLdqYywSU559/\n</preKeyPublic><preKeyPublic preKeyId="2242">BS+iI1419ztR5EfQjyqsNd5dhKzsR3qmekzxC/paYw1U\n</preKeyPublic><preKeyPublic preKeyId="2246">BSBSmf3fpjKSQHboMLJ4TjxSlFZvcuPVcFE8sGQog6Ny\n</preKeyPublic><preKeyPublic preKeyId="2267">BZleXHFBKIrHwbVEbF/x3HSwQ49Vma/GZIxx+jAyOP95\n</preKeyPublic><preKeyPublic preKeyId="2222">BfzX2PDbQRVIZZCpaA1WEuC2qCfBiQhtShLR1Zsn3DhD\n</preKeyPublic><preKeyPublic preKeyId="2262">BXMmVf+xGtwPj3nakCRjPxKwjUJi4AiNqnDYY1lfnY4X\n</preKeyPublic><preKeyPublic preKeyId="2212">BX+dpAOqUK94W3qp6zPkkJnCwUknIAWvBH95zYUN3sRu\n</preKeyPublic><preKeyPublic preKeyId="2290">BTAOpf4m44vOM8GOZ8tBhPYkE9M9sbRudafxuyAQypNV\n</preKeyPublic><preKeyPublic preKeyId="2201">BUXSrBfFp84yx8bz2a/37JSJQXLdcTdVeM4fGSJHK3E9\n</preKeyPublic><preKeyPublic preKeyId="2206">BTJIvyy342JsNx5ohFK4GFEfgyame3B5hO7434Yf2LIq\n</preKeyPublic><preKeyPublic preKeyId="2254">BaZ+Y9NJW2iiDgFqKDVv1na2Ck8xXUbhZpA9kffEDFtp\n</preKeyPublic><preKeyPublic preKeyId="2295">BXm/HkOQNqgPswlb3Y86MlXspLkWIMvg+podpAkAN+Mf\n</preKeyPublic><preKeyPublic preKeyId="2273">Bbb2A1Krc+ZQ27Iu4l/LDRLIJaBQ1klPaXTATiv6E9BV\n</preKeyPublic><preKeyPublic preKeyId="2300">BZrJyZLNfl8iCCHolqGlbd35qv8StLtLXUNTnwI7BJwm\n</preKeyPublic><preKeyPublic preKeyId="2259">BbLhwpz+AJcQSI4DIxKwD4plauxUpOOSQHHrUyL0vFlv\n</preKeyPublic><preKeyPublic preKeyId="2237">Bfr2Wiavt4l17vDK4awz/BG6BdJKxQbxLuia7sO/AOhk\n</preKeyPublic><preKeyPublic preKeyId="2217">BWXjPq2k2aOAmuwCXZiGQGZIsu2ApmtvmFFBoxt4IeJU\n</preKeyPublic><preKeyPublic preKeyId="2207">BTQg4tstl5UgIjkY8uLoIa/v/k9WyvBIiTSK0vSjqJZD\n</preKeyPublic><preKeyPublic preKeyId="2260">BQWhamvQuniUcg6YM7S3uyUgKRwM7J4xnus6bSZvumI6\n</preKeyPublic><preKeyPublic preKeyId="2231">BYmHYkJ+8RpT2WZABwXAPlNbYaZqTNEMGuXjG+N5llt0\n</preKeyPublic><preKeyPublic preKeyId="2226">BZvAorIXnN4ph6FB3cgir0m9V/H//4VS2eKLW6muVWo5\n</preKeyPublic><preKeyPublic preKeyId="2285">Bbbyp7vqGepatda1GP+kDs689yhqMMxBju/2kR5xXzJN\n</preKeyPublic><preKeyPublic preKeyId="2268">BQwQthLNdST2McTSytVL+1HV+fgr8KCWYE6+K32zLbIH\n</preKeyPublic><preKeyPublic preKeyId="2278">BdFbSbfnCYiTSzEo/9KeP8pKBFp56v7rB/Q+qAE9aVQP\n</preKeyPublic><preKeyPublic preKeyId="2211">BY2JlGbVpMABLjR0Q3Pvwzp3xrRcVeLOPNghQ/CGC4hP\n</preKeyPublic><preKeyPublic preKeyId="2255">Bd2vxCYOXos3cUILrBwO19KLiGnDBh3wWR5ypB1QVWAw\n</preKeyPublic><preKeyPublic preKeyId="2299">BQAyClLFYA82DRKhN60NhZFoigpGC9ke6kOaiHhatB9x\n</preKeyPublic><preKeyPublic preKeyId="2215">BZkEk4tsILFHuAlCvZBvIjBhpbYaeeV9DwOzNRBnFrpd\n</preKeyPublic><preKeyPublic preKeyId="2205">BUkUwQtK68n0espOl3jGifRmPjEnly+l4l2+Ogcac39w\n</preKeyPublic><preKeyPublic preKeyId="2243">BXzpdETDERbQelPRdGxi64qIe+Fc6ZFtlJMyhAoH8h8M\n</preKeyPublic><preKeyPublic preKeyId="2283">BWI79pzHnZaUBInnOvJwP0h8VH+4Dbg335ZBcDYVwNQv\n</preKeyPublic><preKeyPublic preKeyId="2238">Bb+XwihDVeyzKVdDixgM4Hl8kH+Efk9HQ9P763ZWyAJ3\n</preKeyPublic><preKeyPublic preKeyId="2228">BYb+TmyaEIoAEI/LbnEKdQLra98xc3gSBhmL8U4g8nhc\n</preKeyPublic><preKeyPublic preKeyId="2233">BUv5n14WhS15CjohW+sfJyYWAilKrbtPDUDViSN1SP8X\n</preKeyPublic><preKeyPublic preKeyId="2280">BcJbqkzNXUylPf7L9oXaZ3Hen5wXpW5VzuZBV6WATN9S\n</preKeyPublic><preKeyPublic preKeyId="2263">Bft6xUXikSkVNlU9ULMYnpvh1igTvIoIKE0QZdcPR6RU\n</preKeyPublic><preKeyPublic preKeyId="2284">BUXSDgr2NW9DYRo+wuMgNoRgsCtzrVYrfqIqyDLVeSJZ\n</preKeyPublic><preKeyPublic preKeyId="2289">BYxAkH1Iu1gLKGfOdMGlNVjoGbYQx7fSLUQSnKF8LvMz\n</preKeyPublic><preKeyPublic preKeyId="2244">BToCzSt6RF3SwxButclfeHnqfwKiglpr1s2RSjQvOplI\n</preKeyPublic><preKeyPublic preKeyId="2227">BYptP37fkWj3fAB0eLtjHFBfP7KHR8oovoPhVKDD6O53\n</preKeyPublic><preKeyPublic preKeyId="2279">BR6Cn8H/moHqmE8tZyOgNz/KAm4Fc/p91XZpot3aE3sf\n</preKeyPublic><preKeyPublic preKeyId="2210">BYhKsaSLG8Gkc6XXlU7IkbwHUm6xBrtH4BIdLLgPvdIC\n</preKeyPublic><preKeyPublic preKeyId="2294">BXymTpW1wVEhfa67ZF5plLKanejYTzhjwux0IyvbJkw+\n</preKeyPublic><preKeyPublic preKeyId="2274">BTV3IzjcaQU5bCupCp84byjv9gK/DDPQWQzuJFXpdSN8\n</preKeyPublic><preKeyPublic preKeyId="2264">BSAq820iZI1S58yuSs6uw13nFX7WK3ZZCh95YvhsNIot\n</preKeyPublic><preKeyPublic preKeyId="2250">BSdM+7rg0/QjkmUmWRd/aw4yjDcJrxo+Fwaqmq76pn1t\n</preKeyPublic><preKeyPublic preKeyId="2269">BVY4wH6PfSDUJQiE0COPeastZaYXVQNCZfAgK43NTLkc\n</preKeyPublic><preKeyPublic preKeyId="2245">BWBk7bXF0GJ8lZLAqS70KdzOBquSH3yupl1bqPgbStY6\n</preKeyPublic><preKeyPublic preKeyId="2261">BVNUgc8tXvMJc8QtuJIyCTVJwWubd5/MlhO/SF3X/0gW\n</preKeyPublic><preKeyPublic preKeyId="2256">BVRFtf8m4svCI0U9BEaRI8rOBi9cy3RyqDAOEZwx9+F/\n</preKeyPublic><preKeyPublic preKeyId="2216">BaNV2+oownIuUoJkeHEXf4Zk4smPHsZg79DOSMCnQFMt\n</preKeyPublic><preKeyPublic preKeyId="2221">BfF5hkCe2QhzL1DPb8hyjI2FP3h3sZmoiSXDHggmRlxf\n</preKeyPublic></prekeys></bundle></item></items></event></message>'),
('573274006173107', 511, '001467294022820', 417, '<message to="573274006173107@52.202.183.213" from="267814590231158@52.202.183.213" id="6XAEVnUh"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.devicelist"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212395" node="eu.siacs.conversations.axolotl.devicelist"><list xmlns="eu.siacs.conversations.axolotl"><device id="639207389"/></list></item></items></event></message>'),
('testing', 484, '001466996204897', 9625, '<message to="testing@52.202.183.213" from="manh@52.202.183.213" id="phR23YUM"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.bundles:35348830"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212378" node="eu.siacs.conversations.axolotl.bundles:35348830"><bundle xmlns="eu.siacs.conversations.axolotl"><signedPreKeyPublic signedPreKeyId="10">BXF87kAF/XCQSnfayP9RF7b4oPv7ZiDs9CcvFP+WhgE6\n</signedPreKeyPublic><signedPreKeySignature>GWmlMGN/nEH0KpU4uHmMtoeIlpJvkqbudAeLW2G9jfnjr6wIdiX02zjXdoEXlLBvBl8comb38AkF\nIEFnlYqbig==\n</signedPreKeySignature><identityKey>BUd1IinnzYtmpjV28nEGG4BfZ4CpdKvIO1soEBe7wfxd\n</identityKey><prekeys><preKeyPublic preKeyId="930">BTBV6BoGrbvJj8TIiT5qGRQ7zHQvVVf2Cdwa8YwHaX9t\n</preKeyPublic><preKeyPublic preKeyId="932">BYLgBg+9kJw8z9huRIyWa22SfmUR7o13JfmZ8anDeooq\n</preKeyPublic><preKeyPublic preKeyId="976">BTjj6gy0iIGRmUScuwnc9NCp5v5jDY7GvtvYALZd94IQ\n</preKeyPublic><preKeyPublic preKeyId="908">BWr7oVEb76x6gq9alYK8bJIKlYopQdqpsUJZpmqIgolZ\n</preKeyPublic><preKeyPublic preKeyId="915">BbRTo3/3FDi1q8kVBdCfT47Y4WhkobOKWvZOWurBMhw5\n</preKeyPublic><preKeyPublic preKeyId="972">BVFmpOqSzC4MTElzy+e6zn4aeGsNNr/FnBhY7gQFUadV\n</preKeyPublic><preKeyPublic preKeyId="1000">BX5r2IC406YIRUfda74djDNSbc24KWHJkox/o+NqVcIe\n</preKeyPublic><preKeyPublic preKeyId="939">BYxpR9dTUPTFj2slQsswEyPQk5tpsC+8oJ4k6Y6WsI5J\n</preKeyPublic><preKeyPublic preKeyId="959">BWOY/XDofmD5y9CHhf+P3x469e8WYyM2bBk1lh0JVhde\n</preKeyPublic><preKeyPublic preKeyId="956">Bfyx4MHKqN3sSQzOxVZpKX5SSDqCtyR/2piRkPFoCkdD\n</preKeyPublic><preKeyPublic preKeyId="918">BT2OCDmo6K5faHYTdibmcaqbBzd5NsTQOsiQmjyxIVJi\n</preKeyPublic><preKeyPublic preKeyId="940">BUVjHSfkzN4m+UsO+deC3p4FbdNmFUQTMm27yHnxMbV1\n</preKeyPublic><preKeyPublic preKeyId="944">BU0UeAMxgQ1P4xGMlRnb7WZEfffccTLVaST1eweUCJpH\n</preKeyPublic><preKeyPublic preKeyId="946">BZqn+uSZ9xhxDcI54XlanRX7wB0iE0M+V1kNF0PQvY9d\n</preKeyPublic><preKeyPublic preKeyId="917">BW+KskbnuIqd1yQPP47Jv6UNIgqRc7wep132pQI/SKJD\n</preKeyPublic><preKeyPublic preKeyId="988">Be9YXRCJdRFks4JUDoNWiX8NZWfs4nFw80HZqK6EnCll\n</preKeyPublic><preKeyPublic preKeyId="924">Bdv+G7/O57PuaxdFVrwfqv3QzYW5YlfCtp37pySwofco\n</preKeyPublic><preKeyPublic preKeyId="912">Be0JRZMpT7blo0rxipd1prmLLkF44PFM3/O3z8/6a+o5\n</preKeyPublic><preKeyPublic preKeyId="970">BWfUZZBUTfReAYo4zfwBhQVfJTtKM4dpkpCNhO77ZpxA\n</preKeyPublic><preKeyPublic preKeyId="998">BfK3zhTjCKPK3LdHcCTc4Ka6xadxyQtI/f7k6AO+QlZi\n</preKeyPublic><preKeyPublic preKeyId="997">BUx8YJeyneqPq1f2dx4F22HMICF/vTIpEuHUSd81e4MR\n</preKeyPublic><preKeyPublic preKeyId="916">BZaKOTvlNtH5QWLziJNmIia1adbSQUvSc5W9cYtgf9t3\n</preKeyPublic><preKeyPublic preKeyId="961">BRaq4X2n8ewRrCVGm2zx59SKZB/W6d0ahaOqb5J2f6Y/\n</preKeyPublic><preKeyPublic preKeyId="951">BX8DpruKbJOhlhRUUREdjRlG82RVrNCQ/z3upzviqJNz\n</preKeyPublic><preKeyPublic preKeyId="909">BbNopv3k0V9TQC9Qvcb59mMhNnRLvvY7B5CzjLBkLgIV\n</preKeyPublic><preKeyPublic preKeyId="941">BZ2RzBbCf0ZsQJsoQ+zDZ344SQQl/brF7MXcRHFMQ59i\n</preKeyPublic><preKeyPublic preKeyId="982">BT+AxddSDeypuWtn+a4r1RVu76bmnBJt4KfDe3vHM4Bo\n</preKeyPublic><preKeyPublic preKeyId="914">Bc8A/JOS+VwAif1VkI0/zE9Ad5Oej8kqzSFjtP4ciM8m\n</preKeyPublic><preKeyPublic preKeyId="901">BXV6mH96lSZph5xHIMLIA4D8QeIl+aVROoqw+4ybTtwi\n</preKeyPublic><preKeyPublic preKeyId="934">Bf4jplW8nDZx8Jvyw/X5FBRnxRW0YxoQY5Qk52emGIMI\n</preKeyPublic><preKeyPublic preKeyId="974">BRtQujBSJH9MccalM/QPOs841cDtUrd7FD3HLtKW/clu\n</preKeyPublic><preKeyPublic preKeyId="942">Baf/WqdwyVwrOCTMflJssNDy3/kOvvpSwRAhERm9NFI9\n</preKeyPublic><preKeyPublic preKeyId="954">BWYtE2ZA2/oeFMnscP3dxZVMEX2n6f+boVt5G5H53IJE\n</preKeyPublic><preKeyPublic preKeyId="938">BRIW6REWplIiD0YASxXFBa+I144nC72VTTf1MB0RG5Nc\n</preKeyPublic><preKeyPublic preKeyId="928">BQrwYjxXxAUGiv2mSUY5FFMaQWjyUX07Opyte5Q2A4B3\n</preKeyPublic><preKeyPublic preKeyId="910">BbkN7TeO2hw8qppJSH8pEcvw5eEkvx2Xn5zxY2TL8HRW\n</preKeyPublic><preKeyPublic preKeyId="969">BSI68iRqoh6TmBBkTb13kGV1ZwKIIKJ5zCBlfI06tmkw\n</preKeyPublic><preKeyPublic preKeyId="955">BSLIUmMOGRVuuOkPCFj+N5MIFdbSscqZJlyVIwHlkp1a\n</preKeyPublic><preKeyPublic preKeyId="966">BYAWRoHaFpiK9uY4M19kOgwVTu/bDef2jBNpWLBUuDFy\n</preKeyPublic><preKeyPublic preKeyId="979">BRhV7aRHeXdXHlnyZJk/uw8Tpx2V0Y6GfR+kWNGV3K8s\n</preKeyPublic><preKeyPublic preKeyId="921">BekBjZk3OrdE3qxyiEMSTr+zbdrn3LD8Cajr8JrV4aZc\n</preKeyPublic><preKeyPublic preKeyId="927">BTKEbHojj/HD+C8UmbqgAYFYs+C3o+d0e/9KPcjvOg9F\n</preKeyPublic><preKeyPublic preKeyId="958">BeAFhQhSCifgHXvIehFxHTGEwJvnlzrfQx1zdZQcwz9+\n</preKeyPublic><preKeyPublic preKeyId="950">BRdlMQ1nk9lLA/ACU5AxuiQDuX8pXnsN2ETSHhACg2JL\n</preKeyPublic><preKeyPublic preKeyId="925">BQytnt45O6M1FJKbrciyBL8HxoIUJ9cc1+JMu0qtjSQh\n</preKeyPublic><preKeyPublic preKeyId="945">BWmMl5BzBI+vwc1LM6yvpT7vh/Zlol/cCZzqAwJaFWAD\n</preKeyPublic><preKeyPublic preKeyId="923">BZYLQqadQKjDROEr092pKPTMUjPHS+GSP6KyMIMXTNgY\n</preKeyPublic><preKeyPublic preKeyId="994">Bf2ILQoAio543py2ex0n/zwwgM1h0g2aYCiG/kY1WCoQ\n</preKeyPublic><preKeyPublic preKeyId="986">BaqKIY91JZnnM1c0TvjdUMOWvoafChq22ttpNRg309Qw\n</preKeyPublic><preKeyPublic preKeyId="926">Bb+5nLr2MtxVqdyzy4CVH80AXEYo2Z2dv13cfPSAtV0+\n</preKeyPublic><preKeyPublic preKeyId="929">BRWCBAHWbJTv5GLwMbfTva6Eu78JQu4CVnYrg83FXX5b\n</preKeyPublic><preKeyPublic preKeyId="973">BX302SMZ+4fOJfP4rYuH6U1IHcBxvlsK37uwpEySLCR1\n</preKeyPublic><preKeyPublic preKeyId="984">BVn9TfeJ/hVnNObG5yn/I8tb5sbg7LRwEDRAADitDf8u\n</preKeyPublic><preKeyPublic preKeyId="991">BZ/5ouFmd4UdCIyvgYLggoDX0mMFF21JdmqH1iZoLyRw\n</preKeyPublic><preKeyPublic preKeyId="993">BQY9zfu0Kbi144ec5cV4a1bdYQdD07uX9cY01nT24XQa\n</preKeyPublic><preKeyPublic preKeyId="911">BTXCVH65Lf6ThRxhAKsWeU02DFuPWJ1sWqgjdd7AUkw3\n</preKeyPublic><preKeyPublic preKeyId="960">Bex/5KSprTwjf4viF2vaBgLSA4juznZ02goClOgqKH4T\n</preKeyPublic><preKeyPublic preKeyId="907">BVZ1ciFdwJ/xgOINT7ZjTXVC3TD4R7oyg1dG6pTN/sR1\n</preKeyPublic><preKeyPublic preKeyId="949">BdA/ieW1s168x3WyukHIXXIdrQVy8CxRUmSSWPaQt4Yz\n</preKeyPublic><preKeyPublic preKeyId="985">Bbf46AfWIMNv3pLFyW5ZcXMZ4Pi5p+T0m79L59ZfyONm\n</preKeyPublic><preKeyPublic preKeyId="962">BWcaEkymo6K6gnse9KnNY4Sd7Cl8JzwZFQabS5T52JZA\n</preKeyPublic><preKeyPublic preKeyId="948">BaxftkbNlLeAFHB7BNWxqbLcBIoAMEZnUxR+H9YQUCkz\n</preKeyPublic><preKeyPublic preKeyId="935">Bb5z1LsefLLdyzeFOLvxGjrOYiXhNRMfpM+i7on54gAD\n</preKeyPublic><preKeyPublic preKeyId="937">BTqamiWhQN06Zb5T7j3zbLghZfQkK9apdhlo2Up3RkxP\n</preKeyPublic><preKeyPublic preKeyId="963">Bf5lDWIMYgK70Ffnyab+2Z4ALBMXDog0sWWYhrLN3WtN\n</preKeyPublic><preKeyPublic preKeyId="989">BfCfl1PWRn1+ULbGN+mMtcQH7RBEb51H/KnGHED47lk8\n</preKeyPublic><preKeyPublic preKeyId="981">BVmVRmRuv3p6q/7ARLEqUBoNzmzfi0h56UCktor9bHQC\n</preKeyPublic><preKeyPublic preKeyId="906">BfcxC6KLJhD1T65hQR8lyLr2MQfDHqzxKSPFnWVo02JJ\n</preKeyPublic><preKeyPublic preKeyId="965">BVx9RjyLaU5SXdECWssW9jitG63rww/AGus2GdlDGlUT\n</preKeyPublic><preKeyPublic preKeyId="913">BVV8ZRoSc22Jk0XDZQzcwbZRdM5F8omGtU40rGE1YEAW\n</preKeyPublic><preKeyPublic preKeyId="975">BTOLhVYBhleF6cAyXtYPfoAZ2mlL2C8V2cMywwEedh8I\n</preKeyPublic><preKeyPublic preKeyId="953">BYRtuHHg0l6BKzhpLuy08IsV+wLOpSMm6hWTdASnkZoX\n</preKeyPublic><preKeyPublic preKeyId="999">BT+0Ly2BJXNKbR3GM5szC1K9Im3Ha2rj+ACPH3oHkWtT\n</preKeyPublic><preKeyPublic preKeyId="996">BQCIYZXCEtiDzLME4aKOWUTiAGneEckmyNd4hp8t+b8h\n</preKeyPublic><preKeyPublic preKeyId="995">BTYtzsNsyTVPIjsC2/wyTOIIiIn4AU7en2wApDgVhBNO\n</preKeyPublic><preKeyPublic preKeyId="978">BYxhusE0T6MeAbimd3wJUYGQ+E/Z1n9nYrixmsQtM3Nf\n</preKeyPublic><preKeyPublic preKeyId="902">BQlohqz2d7z1b8zUZl6YBk/E8DWEaMOmHVgy6gqO98Q/\n</preKeyPublic><preKeyPublic preKeyId="964">BfWq1ySNAHGiZCeIu7z/TmqYItYzhGbDluTuDKJlURgf\n</preKeyPublic><preKeyPublic preKeyId="922">BSH0C47BI0iugj6kRZNl4ZbGDzXHetcO+lfp2Pp9M5Ry\n</preKeyPublic><preKeyPublic preKeyId="967">BWyimbZfIMgc7MTx8xjA3ywax0sCxSP+UVtXLjiQtM5A\n</preKeyPublic><preKeyPublic preKeyId="947">BcpK5bJP5Ztznv+MWfBwnywPxGfIFKdnITZI6UiFNPBM\n</preKeyPublic><preKeyPublic preKeyId="933">BSbdM1J+ZP7IBMsjQZwWSbKGZBzeHdf3A03bTojSXIoq\n</preKeyPublic><preKeyPublic preKeyId="971">Bc5ex6IfAVaUgJIM6OsEJ5ZrlfBwbEB2m9wLdFxxyDJo\n</preKeyPublic><preKeyPublic preKeyId="919">BW5tjg5y25X1C1ytwcZXoRugvZ+TpFxDuq1myy+a7p5t\n</preKeyPublic><preKeyPublic preKeyId="904">BVz5CdEG5KLMFq0/MsG/eeuWnGL1oe+4r+GBwT4S+5NU\n</preKeyPublic><preKeyPublic preKeyId="987">BZSnvRL6ymDMff0CevMTErTfw7Y+K+/f0v77TFt1YPgu\n</preKeyPublic><preKeyPublic preKeyId="943">BbgreqBg/pCBpHJrZny0A6gTkA1e10BbWeqZTx+uevVK\n</preKeyPublic><preKeyPublic preKeyId="957">BWeaxemWNJHFVpmHGwel6MzkCOqV6QjVb5HS2rajhJFC\n</preKeyPublic><preKeyPublic preKeyId="983">BQjKl2nB17d2XZDE16wG1lTYfBAShHn1qSdAgTnZm+gq\n</preKeyPublic><preKeyPublic preKeyId="968">BbUUpFQgkJ8kqtzE7kB2RvYzX0GDYT2Bt6owQRwxrOND\n</preKeyPublic><preKeyPublic preKeyId="992">BYFkM6XkkAz/ahNjoaxGphl3mDdInhUUTMMrIS02+dBa\n</preKeyPublic><preKeyPublic preKeyId="977">BQzGq5R+jcogEcEiZ4/D/9L3SSrBJJvSI/N5dvJXmAQj\n</preKeyPublic><preKeyPublic preKeyId="980">BcQeIf07she+pP7smvAkCzvIaWLMeCRbyB2f/+JhXhoy\n</preKeyPublic><preKeyPublic preKeyId="990">Bcq14XodXl2fMVPVpkZppHfmSQuAaMZCJiMv9eFIKfN6\n</preKeyPublic><preKeyPublic preKeyId="903">BSIrQXNElr4BjuBK1x9hYDDYUTDASQ+4ga7ekHEKqN1D\n</preKeyPublic><preKeyPublic preKeyId="920">Bd/mbKZjQCTiQ8/kNuuFN9BMn852uw+2HIKrhsbtWoQD\n</preKeyPublic><preKeyPublic preKeyId="952">BXoLCE5kc4ytZZ1qBxcY3XvMhaq7oqe+pugZ/Sg0ku8N\n</preKeyPublic><preKeyPublic preKeyId="936">BaluS2XLkhubEYdZBMxRhbHFq9pdRCtEy5MA/6NevJZr\n</preKeyPublic><preKeyPublic preKeyId="905">Bd93zujiW25ZwtL8uOI1eNlKpbEaU9HoEf/YoHwSUrAr\n</preKeyPublic><preKeyPublic preKeyId="931">BVNO2ipLWfKFSdqZq/iHd8oUCk6sZae07U7DFLe2FkNN\n</preKeyPublic></prekeys></bundle></item></items></event></message>'),
('testing', 485, '001466996206021', 397, '<message to="testing@52.202.183.213" from="manh@52.202.183.213" id="fBEsle0T"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.devicelist"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212379" node="eu.siacs.conversations.axolotl.devicelist"><list xmlns="eu.siacs.conversations.axolotl"><device id="35348830"/></list></item></items></event></message>'),
('testing', 486, '001467006433281', 9724, '<message to="testing@52.202.183.213" from="manh@52.202.183.213" id="I0oBkpS5"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.bundles:35348830"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212380" node="eu.siacs.conversations.axolotl.bundles:35348830"><bundle xmlns="eu.siacs.conversations.axolotl"><signedPreKeyPublic signedPreKeyId="11">BZsY3DHq6tfJPtRaUtG27Du1XljVVZy0jkPjmZIRM9xo\n</signedPreKeyPublic><signedPreKeySignature>nahUDSK8diM4eiSIVyxPRfaYziOV00D93cnXLDyTirnUpP7Jc+l6e7RMS4zSFGrxegSGdGRMK/A4\niio4PnBFiA==\n</signedPreKeySignature><identityKey>BUd1IinnzYtmpjV28nEGG4BfZ4CpdKvIO1soEBe7wfxd\n</identityKey><prekeys><preKeyPublic preKeyId="1032">BXHPyppGyiAM2SvM6y+6bo7QO5INjDihK8Mm+gOlE0dx\n</preKeyPublic><preKeyPublic preKeyId="1060">BUshNz5EWYjK6aDDGF6ZmTlFTkGxYXbmXJxjYQ5ivusX\n</preKeyPublic><preKeyPublic preKeyId="1041">BZTO9/8Ox4Klq4vdz4TYplxTyoNYoXC5CrGy5fXWHwti\n</preKeyPublic><preKeyPublic preKeyId="1039">BWEOUzIauZLhF5cKToqP7uNANdVO2y08a/dAUCn5LbFp\n</preKeyPublic><preKeyPublic preKeyId="1056">BVSyoT721+61xfeKnvWWP1gx0cqm947yiMcAWuM0O4VZ\n</preKeyPublic><preKeyPublic preKeyId="1020">Bd+7+sFQ7s1aOPpJBwroCPd9UA/RlKu+lGVz6EaP+O8Q\n</preKeyPublic><preKeyPublic preKeyId="1073">BZ+zzXwxq80sGVAQZLzVrzs38pemp5jUIYyVP2Ls7gkW\n</preKeyPublic><preKeyPublic preKeyId="1038">BdQLkg2AQe5SDitpd9mb1vj5RZ5BSp64dxDV6Bj23ShA\n</preKeyPublic><preKeyPublic preKeyId="1025">BRAD9KvcCErOuCeBvBFYbXPcNuw5cAcOgARDhQrWrjBf\n</preKeyPublic><preKeyPublic preKeyId="1086">BZQghMaxJzUzQdGQiEMfQ2l809gOIHLF8OHNqKDzRa5I\n</preKeyPublic><preKeyPublic preKeyId="1064">BZwthRriYgyegh+GBGIjpR0yn2EdWuknQimoiVHxBptq\n</preKeyPublic><preKeyPublic preKeyId="1034">BXNIfvwgFGilCY7bmtjSlJIhpa1Iryp58+vdE4FxGFsJ\n</preKeyPublic><preKeyPublic preKeyId="1031">BQFfpmT+lMj91OtFYPCxSj2JdMTONhCkLDHiWKnP1VJA\n</preKeyPublic><preKeyPublic preKeyId="1077">BdxVcPLYdEBXNOjUk2aS1joNh8q8v+MSqKoT83xxWLVI\n</preKeyPublic><preKeyPublic preKeyId="1035">BRqnvWXYaHpdWPsrjktGWBDYcEl1n29lmgggFDPvDiUV\n</preKeyPublic><preKeyPublic preKeyId="1010">BbUDp7MAAGri9le8ELrqTFwv2MKQ1KSMnbdwEYiHEQke\n</preKeyPublic><preKeyPublic preKeyId="1068">BYp4JPACvbkOnVuPzVwTjetYtm0sEjH3r1PVVLswMCFN\n</preKeyPublic><preKeyPublic preKeyId="1003">BSdHyJlPbDrz6LA3Mvu2LAiRnPr48zrzI6aUoW9W8356\n</preKeyPublic><preKeyPublic preKeyId="1066">BfbgNXeKiBFcr43xsFHH4Ih4sTxhm3OXgQtqWZYJkDJb\n</preKeyPublic><preKeyPublic preKeyId="1017">BTCdNjvXjJZFp7Lu2tWv85sYqyT48nCHu47WzbCOWxc3\n</preKeyPublic><preKeyPublic preKeyId="1074">BWIBHVtR6fDSlhhAV8nV/LpjhYKaQebDqUe+0P6H5Hh6\n</preKeyPublic><preKeyPublic preKeyId="1033">BcEC+IqWnWaCocucNxYYIzX8wW6zN8zQko/ohT0bycZ/\n</preKeyPublic><preKeyPublic preKeyId="1083">Bfi7Ey0ORDMaGfuVYGUPBMRPluWZd3qPLpUBvAwekTUy\n</preKeyPublic><preKeyPublic preKeyId="1029">BZdQPCydknFzKKdCB6MPycT0ymrZYofHTr3ND/sPMC8l\n</preKeyPublic><preKeyPublic preKeyId="1044">Bbs5G3HqkyR6kPArE3Wx7IUCGYq/KhMgj8AQ9ZSHfjJA\n</preKeyPublic><preKeyPublic preKeyId="1001">BYOX6vlATeUMDMWB2F9ZHEqbCLMLEb2yROD5P1BkJRle\n</preKeyPublic><preKeyPublic preKeyId="1019">BZlqnavuowuEAv2ASlOLrQXtQZWu9JyMhoX3SyHcjHAK\n</preKeyPublic><preKeyPublic preKeyId="1011">BRJNylCaLydenHHb2Og/ugWE8/l+2Hx5vkSNMSfR8G0Q\n</preKeyPublic><preKeyPublic preKeyId="1081">BYXGi2qEK/MBriRSpIhAmmZtXwyVORcuxQcjcvo4xvlw\n</preKeyPublic><preKeyPublic preKeyId="1047">BemDnRFX+5owB7wCnwtHoGS+SFqoISQrg0Slb1cKG9lA\n</preKeyPublic><preKeyPublic preKeyId="1095">BYGwTDesFZckxX/Fm0ZQ+RDBZchIA6vNf4XQunUtYiYO\n</preKeyPublic><preKeyPublic preKeyId="1052">BZsFVALndmJ6XqlCHppTN7EukcD4PLk0DheBLDaSC/9t\n</preKeyPublic><preKeyPublic preKeyId="1089">BVLs3MWHxfEUb2AIFTt1UQYCxJJFsHRi5vPwMNCFN24s\n</preKeyPublic><preKeyPublic preKeyId="1026">BRI8iXFq3NUikpg1jaQ9fD0S/mDsXFugf/Z2KhUkWUo3\n</preKeyPublic><preKeyPublic preKeyId="1007">BX92aAcUE1ETog+8dUtGVT20OZmt9nNhtbihW2WQdJkR\n</preKeyPublic><preKeyPublic preKeyId="1069">BVIq9RQ17pyeq72bD1Pci4JRM1iZJwxwm4Xg/k3PPhUR\n</preKeyPublic><preKeyPublic preKeyId="1008">BbC7hTLQorppah4joNk9gsAZnjFnCXkMm7M5N/9zoyN1\n</preKeyPublic><preKeyPublic preKeyId="1097">Bb6Gd/e0Rphf9r63/LhP8p44R0bhOvJkAzeOWsGzPMJw\n</preKeyPublic><preKeyPublic preKeyId="1021">BZ82yWUe2Qaki9ajuLtV/BFLSatMQ3xNW4VGmyMk2KU3\n</preKeyPublic><preKeyPublic preKeyId="1028">BQP1dEYLbOrovy/r4eJTqygdWjhI2wjUTK2Oy3AnfSEA\n</preKeyPublic><preKeyPublic preKeyId="1014">BYKqL3SbItauF6JmNdgipRx3WAuzuIfaKFyY7MzykZsc\n</preKeyPublic><preKeyPublic preKeyId="1013">BZ2QKpURs2qc7jWnR2GVDgiXcE3AqtINnHpEMwPKzFcF\n</preKeyPublic><preKeyPublic preKeyId="1016">BR7sh5ZI1JYkkcQDkmLJwROTmflZOHupUVRSprMhMfZ2\n</preKeyPublic><preKeyPublic preKeyId="1071">BRJUlCPtPQeZv8+9jQZnmmuTLLgq0t/FYc3aUMSP11gJ\n</preKeyPublic><preKeyPublic preKeyId="1084">BaFI9xUjfsvlN3upyvkA5rN4/L72lVOE3uhqk3ch5l1l\n</preKeyPublic><preKeyPublic preKeyId="1065">BeCLySvBCiUTYApXmj3UfxrwPi5jjkldz+IOmC24M9xL\n</preKeyPublic><preKeyPublic preKeyId="1078">BYuhrhh1nMfmgEfNUV8DpYbOcP0oojhhPtPgQVLdQCVK\n</preKeyPublic><preKeyPublic preKeyId="1048">BajGcvIdn3acjmpbAPt5/AiElrNTzV7D2xJtvm3GZqwF\n</preKeyPublic><preKeyPublic preKeyId="1061">BdnqbGZSZ4zO2KufP4DWu4EAoHT72dSNH6rsidPAfFhK\n</preKeyPublic><preKeyPublic preKeyId="1082">BU8B/xY3zjnqcGfrD6aZM2jpPaKjLCSRaQEPPUyjg1cY\n</preKeyPublic><preKeyPublic preKeyId="1046">BfPOgzv/tq3S+7R5VKzcptFZ6nbPg2lrX0SkI+u4LHt3\n</preKeyPublic><preKeyPublic preKeyId="1099">BbnV9zsQj2CeVdP23d53hwUp2ZIq5aFCt+t2IgHRkK1f\n</preKeyPublic><preKeyPublic preKeyId="1085">Bc64rupp/fTaoVDQJSqHOpK+oJN+QeX9Jr3XWK8/5ER7\n</preKeyPublic><preKeyPublic preKeyId="1070">BSV8gb43cpeJGu/CESPOvQANJ0g/9tlRmWB2039TJK5u\n</preKeyPublic><preKeyPublic preKeyId="1042">BVqu8g2uRcsYVZNTnQbyOqEYRbJuUi5ypuxB+pxheEIU\n</preKeyPublic><preKeyPublic preKeyId="1040">BeGDrazCYa2YW5PA9iQlIg5eTzzJ6rUHR+HWn/rSk2le\n</preKeyPublic><preKeyPublic preKeyId="1015">BRV7HJbVhr2+s3HINTjHHFdQBxHTlKX3RwJWMzUUc2Eq\n</preKeyPublic><preKeyPublic preKeyId="1004">BXlaESM2MoX2ih//S6K2t09jUeRyVTo/JuE7GMlVX30/\n</preKeyPublic><preKeyPublic preKeyId="1072">BcX1EW7FWMPkvE7JuHKlPuIRfBcVVGd459iVkUgs8m8D\n</preKeyPublic><preKeyPublic preKeyId="1076">BfnV7+Ftp7a0AaCiDhYyK/dJJIo4C50aOmSS5SF79WNP\n</preKeyPublic><preKeyPublic preKeyId="1067">BW77dXjFh45YLnzzl6Nadxxlsk1HJnv162HVmHjfwgYA\n</preKeyPublic><preKeyPublic preKeyId="1100">BTtEV02+t9nn0g3Lxs2sWFdKjgTIK5s2zmp1YZMJJPs1\n</preKeyPublic><preKeyPublic preKeyId="1049">BaplaAtiSTbgh3uhjyIFc04oBJhzWd57UEvNn35RF1Bp\n</preKeyPublic><preKeyPublic preKeyId="1043">BSymq66f/fZEm/ax5oyRtD8pUTeI87N2PZTANb7C+8wg\n</preKeyPublic><preKeyPublic preKeyId="1094">BUkJFvExdtA4IZ58cYhkpH7BoXtZszKcCUUmxG4Mi24b\n</preKeyPublic><preKeyPublic preKeyId="1053">BVEzmRMg6YpGGTcCpB+RS9w45FACs1LIqtYF8vS0vRMt\n</preKeyPublic><preKeyPublic preKeyId="1063">BTS9QiBXcsXyXFrGMkW3vwonkocgvSqJpPnYpV9+58h8\n</preKeyPublic><preKeyPublic preKeyId="1024">BQ4V0yLXNIC08PXMn2Yc6GHDqRCJacfERETJ/8xNJhJF\n</preKeyPublic><preKeyPublic preKeyId="1091">Bax453rEtSO37KIpBheB57B2Z11alr6uJVx8F4LLnVRB\n</preKeyPublic><preKeyPublic preKeyId="1096">BU3+YWzc66WsrK+DaVCI0HMvolPRxyWYGRzz/jU1PgU2\n</preKeyPublic><preKeyPublic preKeyId="1075">Ba9BipaUW6ekvpyWbDLr+hAKA/wZ5C0xy3l6u/9HVP8N\n</preKeyPublic><preKeyPublic preKeyId="1050">Bc+w9KNwWXbv8p3QmHmW1ER5gmg4HsiUOzisWRj9uEAR\n</preKeyPublic><preKeyPublic preKeyId="1062">BZIdhJhBNElllmvSML0woXRdKvd5BVHz3vXCPhtrFGQj\n</preKeyPublic><preKeyPublic preKeyId="1036">BVZiLRAC7GqAEOepfZwMR+KdRS3yMlG11miPLqZf2h56\n</preKeyPublic><preKeyPublic preKeyId="1002">Baqo8KW+faYM0VY6eIdfXeYjxmr/uYRbaECCEJpY5p4D\n</preKeyPublic><preKeyPublic preKeyId="1027">Bb75mtAiJQhUAD63avWeMQaQLPFBG89M42p5EaZtxRFi\n</preKeyPublic><preKeyPublic preKeyId="1022">BWcdZAZNDWRRZHewidkDn/hGbmMw+pTP/my/DZ7aG6JT\n</preKeyPublic><preKeyPublic preKeyId="1080">BR01lPqUfImC1YIfSX9s8jog8gqFst8m9glCwwM43G9p\n</preKeyPublic><preKeyPublic preKeyId="1005">BQzN2dmp1Lj4frgdDR25qKaXyd2pm+ruAV92Tf9UZJAU\n</preKeyPublic><preKeyPublic preKeyId="1006">BTN6eTLtpp7qY0q4X+W4d707hulGdJfEwwwq0ktWBLtM\n</preKeyPublic><preKeyPublic preKeyId="1054">BfPmy4GCYO68WfwxM5AxAqSB2qnrJhDjei5FdugMdpQG\n</preKeyPublic><preKeyPublic preKeyId="1093">BcvyZ3Qx1vQgAhMOiMw9igt/DwteXrPlQvQO1kupgykc\n</preKeyPublic><preKeyPublic preKeyId="1090">BdCVrfCfelEH92e+AUzOsvJEgB0FR53CRjY9geRo5PUy\n</preKeyPublic><preKeyPublic preKeyId="1057">BaTOnBlDOZSuv5ehKSClFyjyxo/kswnpsEHM6CCEOjZv\n</preKeyPublic><preKeyPublic preKeyId="1098">BVwUFn+1RAAlrIjH6IxW9pzafs6IElNe1C8FY0k4fLM0\n</preKeyPublic><preKeyPublic preKeyId="1079">BSUl4E6Lk/gLdCNmWJzmQzPyVyoVBo+Uoiuw3QJLewdj\n</preKeyPublic><preKeyPublic preKeyId="1058">BTUJocEMHKxC1+PiDuHqvFqOvbeTWl2c6WPU/ZHyLG5h\n</preKeyPublic><preKeyPublic preKeyId="1092">BQIhHFJT5Bvuy1avlqOBnh5cE6606xLFtfd8Pg1Jp65o\n</preKeyPublic><preKeyPublic preKeyId="1018">BWifq8bQrtBiSHq3b7FrN+d/e+8RssktUG0ekf1WYngy\n</preKeyPublic><preKeyPublic preKeyId="1059">BUADCCmc9YdhvbHjXoKFfRfzxTTxpEJbSklhzefHlzc9\n</preKeyPublic><preKeyPublic preKeyId="1088">BUTuE0pN/haY0ujbfihkWdBvKy54ILDdX9Q6vINkLltZ\n</preKeyPublic><preKeyPublic preKeyId="1045">BRLQV5CCsGhDwGlx13UMdhv3aV6dWe5pEaxchHh8r7pS\n</preKeyPublic><preKeyPublic preKeyId="1009">BYOeJDHluqIWDdoZ3LtoMRMDZEh1BbQwgh4wMbZY9Q9a\n</preKeyPublic><preKeyPublic preKeyId="1030">BWhmtMrjWThiERL8NWJO7An3ua0QdIQ5KNvmzcDmgR8E\n</preKeyPublic><preKeyPublic preKeyId="1023">BfVmG4A8m/S/Ooal8kuUCQl9xt86Ify2EkWSzML2xmlH\n</preKeyPublic><preKeyPublic preKeyId="1037">Bd07k52B71nlrjTLHYRuzcNMSayh2MLyGZBx3B8DsOpT\n</preKeyPublic><preKeyPublic preKeyId="1012">BSy5FVE519Y3eWmDcHalXWSW9Por+I3XfFK8BzBFK60e\n</preKeyPublic><preKeyPublic preKeyId="1055">BUm0m27anyt9et58JD6zNc1puqQ9e3JplKkppqzoNCEC\n</preKeyPublic><preKeyPublic preKeyId="1051">BZFxzaJAHq31905veepj/NjoXraEkM/zLeP5oE0Cu3YW\n</preKeyPublic><preKeyPublic preKeyId="1087">BTu9jwj/lzlacbMHC47GzxVJjMvzCbfeq0hAl349b1MO\n</preKeyPublic></prekeys></bundle></item></items></event></message>'),
('testing', 487, '001467006434093', 397, '<message to="testing@52.202.183.213" from="manh@52.202.183.213" id="jOzcc3X9"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.devicelist"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212381" node="eu.siacs.conversations.axolotl.devicelist"><list xmlns="eu.siacs.conversations.axolotl"><device id="35348830"/></list></item></items></event></message>');
INSERT INTO `ofOffline` (`username`, `messageID`, `creationDate`, `messageSize`, `stanza`) VALUES
('testing', 488, '001467007048082', 9724, '<message to="testing@52.202.183.213" from="manh@52.202.183.213" id="1yRB3TX6"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.bundles:35348830"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212382" node="eu.siacs.conversations.axolotl.bundles:35348830"><bundle xmlns="eu.siacs.conversations.axolotl"><signedPreKeyPublic signedPreKeyId="12">BVS67usPifxuHupthYFIzXx2ZQEpFjQPx/Q7TVKvuu8l\n</signedPreKeyPublic><signedPreKeySignature>a1ILqSlL07okHDPo3cqyPA1qJzReP+CPWOhsrGBC6vp5wABP7D2k/Ojj+plAQxgIHwXd8/9QNdDa\nX2YufCqahg==\n</signedPreKeySignature><identityKey>BUd1IinnzYtmpjV28nEGG4BfZ4CpdKvIO1soEBe7wfxd\n</identityKey><prekeys><preKeyPublic preKeyId="1173">BeU57T5n8moHw2YIHmsFs8NFTeeS/a7nxjL3UMFVpb9p\n</preKeyPublic><preKeyPublic preKeyId="1150">Be4898zP4IOjIYHCR1M9W2tmTuJ8cyWDCEywss8d/6po\n</preKeyPublic><preKeyPublic preKeyId="1134">BV1izUH5ZQ8ftB3+NUV5T7407SpfQfqeXKvFzsUKdb0e\n</preKeyPublic><preKeyPublic preKeyId="1112">Bbg3Ly1seEz7wmyKBFp83+5RJYS6nMqjceuQaxAETU0u\n</preKeyPublic><preKeyPublic preKeyId="1178">BQmYFIxdJwgrmc8SS80Es8hOFN9EtaEz+LyG1Ql5nYJk\n</preKeyPublic><preKeyPublic preKeyId="1190">BSDyED/hfOSj+/vawVm/iCcdeiQYzWsbFxnCxK4g8iFf\n</preKeyPublic><preKeyPublic preKeyId="1138">BR4c91Do8MsmjLv7pZZtmEwW73YKp/R1GE6TDfk+/7Ek\n</preKeyPublic><preKeyPublic preKeyId="1174">Bb4u2xca+K1DU3/gklGNZmdRnSVwHHop/WyPb2NNqloC\n</preKeyPublic><preKeyPublic preKeyId="1103">BUVE55AIqAz5AJQ+d8nE/20uOOwxTDyBo2hCqgp1whFo\n</preKeyPublic><preKeyPublic preKeyId="1119">BU/pOUrGZ+SKWMK1kw/lejozgar0Y6t437MmM0KvX/kn\n</preKeyPublic><preKeyPublic preKeyId="1167">BWYfc2cPHgfLvwiXiVCE4zogmUdVUA2/Z+nOW9nUdVxN\n</preKeyPublic><preKeyPublic preKeyId="1181">BcwfGKGaR2mVucoMjWN2CxiXUgK4nEkeW6Wy1pWxNgss\n</preKeyPublic><preKeyPublic preKeyId="1170">BTb91G4m5Hzc5EW3HVm+BSkulr9sBqA2bbccmOLlHxhq\n</preKeyPublic><preKeyPublic preKeyId="1158">BRO3a/YuP1CKTUJXhhiJGXQS8q27HmzkYe/0ymgDX4dc\n</preKeyPublic><preKeyPublic preKeyId="1149">Bf7npmgjT89eu/a/fQJQxCE7RU7ZW4sbgjYnk/KwoIMU\n</preKeyPublic><preKeyPublic preKeyId="1115">BYqsHXxirRrGhrIhFPoO5eMhkx9yIkDOSLhHlHfHkJFf\n</preKeyPublic><preKeyPublic preKeyId="1162">BX92TWC5O1weFYTNktaxKwats29AY7l42q56530bwjIc\n</preKeyPublic><preKeyPublic preKeyId="1139">BU4XLYyaRUEn/ozp3BvebWlxi26E9gqeSPP9Yt7bktkV\n</preKeyPublic><preKeyPublic preKeyId="1131">BQfmF+uXu7xyrkOTqzfDgxtvP4qcJlbMFvTQ86fX05lr\n</preKeyPublic><preKeyPublic preKeyId="1179">BX0g17bIy1dVnHxyskIu03MBYsgxIaCWIfB3QsPNQggA\n</preKeyPublic><preKeyPublic preKeyId="1156">BfdsyWCH9dJVX0+yxv1sxWCrKkqpT+zzZXmoiuj61SN9\n</preKeyPublic><preKeyPublic preKeyId="1104">BXiLCpwSmaVWDwxRlG54MB6PYe3xWHL5Pk4ws4bAg7B6\n</preKeyPublic><preKeyPublic preKeyId="1142">BbWfmyy7VENS0ZhTGiY1NGyaMedKu1AUsnJr5fDjVDRD\n</preKeyPublic><preKeyPublic preKeyId="1172">BXnl97Quv/+7q96J2f8QQqloAGTe5sjLhdxUv0xHghYu\n</preKeyPublic><preKeyPublic preKeyId="1120">BQoNrgIs08vA4NqQNh3FS7W5dc+cTAkc/1WVam9tZtQZ\n</preKeyPublic><preKeyPublic preKeyId="1122">BRDU67iAOXYWnTmOKkwyd3fHflRfPDYoC3NI3xydBkwL\n</preKeyPublic><preKeyPublic preKeyId="1128">BZKQd3xDwKH1CHKwmY8mzmiAP9oAjqNDRuov8IF7gVRa\n</preKeyPublic><preKeyPublic preKeyId="1114">BVvaKYrrmxXHUE001MEEJissMB9bn7o/IY1pBSEmZdgc\n</preKeyPublic><preKeyPublic preKeyId="1189">BeSEWJuwCbA6boBOZURY3Im7l6LJNQcHpjn5RAwkGsg4\n</preKeyPublic><preKeyPublic preKeyId="1121">BXMduoVwWwxjfxy7AvkMNzsaVUJtjg8OPXz58K97X5gM\n</preKeyPublic><preKeyPublic preKeyId="1187">BT/izLr3DiMhNXBT1CEgp/XfnY5U+jjLxAWVwhkZVX57\n</preKeyPublic><preKeyPublic preKeyId="1183">Bc52zRZYnBGtPS4fPUtVM8sjDRvOdT7lNesGW4qAg34R\n</preKeyPublic><preKeyPublic preKeyId="1154">BSXsjggwiBtLGRjlqf8uwtZB3FgHWOWD7Up/D3vKVx0+\n</preKeyPublic><preKeyPublic preKeyId="1194">BU0UOpUOBxCi8m9wrb4H9QZYGXnE78Nn4jrz+wgHS0EK\n</preKeyPublic><preKeyPublic preKeyId="1110">BVg76i/y9QZ0z6owZ4OTBBB6koO3yPW8mMEu4MO5MO5Y\n</preKeyPublic><preKeyPublic preKeyId="1140">Bd+rOOXqE+xrOZvaN731Xt6h0ATHYBjKXkOpyx97tJd4\n</preKeyPublic><preKeyPublic preKeyId="1106">BeFvszxChPGEw9+t3KZe6eOOJU0XLS1unZrYyp4cBIRY\n</preKeyPublic><preKeyPublic preKeyId="1137">BVAei+h1gubCfG94my0S2bu1ZgwjxImJHjIDOl9vkPd2\n</preKeyPublic><preKeyPublic preKeyId="1165">BT/SV041uyU1e1EORHcJz6Bz9z2m8iQVDuOLZowAwwF/\n</preKeyPublic><preKeyPublic preKeyId="1151">BRnE30f4vKqKI8HTY0gBzDXPK5HwSD6txIrJo8wcs5Nk\n</preKeyPublic><preKeyPublic preKeyId="1135">BQoZFEI+ZOKPfrjofx+htgDvoN7JaIVz81SqV0R21ooE\n</preKeyPublic><preKeyPublic preKeyId="1123">BZGn85FFaEIpzC3LE+JxetqoWYthcMXmHvijP1GDVGhn\n</preKeyPublic><preKeyPublic preKeyId="1144">BXsyMrMoJYZr1VTZRlkBZtCPTTLMKUWVWHGB0EwgFGBL\n</preKeyPublic><preKeyPublic preKeyId="1126">BQMPsQVoLq+hmCnXyJbmFV4Hg1AAE6Y6s2Lq9jx9O7I0\n</preKeyPublic><preKeyPublic preKeyId="1195">BR92+BIM9P1TCu06B6EjdWQzezSzn4leBFzz98X0wdoD\n</preKeyPublic><preKeyPublic preKeyId="1143">BZPpm3crsJXD/spqVr3TNF095TgWW61uxR7v1hfVLRh8\n</preKeyPublic><preKeyPublic preKeyId="1155">BUsCaVvwff/w8JlbxcPtYy7qXGpMFaiC5ll8LDAfVo5c\n</preKeyPublic><preKeyPublic preKeyId="1192">BQN5V+BPZbyXpWfVlZ0oxP+zu2sxSPS0nOJ/2tdi0PAy\n</preKeyPublic><preKeyPublic preKeyId="1184">BTQaB5NwFI9RHp4X7EOj8VGR9rf6PDFmEZku2dVs6z4K\n</preKeyPublic><preKeyPublic preKeyId="1101">BYMf7Z9I2UDChk6CA15xvBphbg1gY3Y3IIrh44NN5fAC\n</preKeyPublic><preKeyPublic preKeyId="1159">BTcw2hAPcADZMYltSn8lEmCiny0YtfHoXm+eCDSMB8ww\n</preKeyPublic><preKeyPublic preKeyId="1176">BeUEM/wbvghWAOMEdo2+KJVwfKkctaPjE15RvA+9iqpN\n</preKeyPublic><preKeyPublic preKeyId="1200">BUtX0e0OET1MHy+chEs/bvdGJSapkPleEeCv0Fe92Adv\n</preKeyPublic><preKeyPublic preKeyId="1118">BZV+0YSAiVhZez00xETD6pKdBCfn0pn9oz6Zs+f+Eep7\n</preKeyPublic><preKeyPublic preKeyId="1109">BXQV+IbZ+TTA0V6ilsAP1Myy54t94FNCWdZE67UsSqcY\n</preKeyPublic><preKeyPublic preKeyId="1141">BSZ5x5aPB7RI16mYiiMPmKv5ztiAaUb4k6IOx76LPBdS\n</preKeyPublic><preKeyPublic preKeyId="1196">BVFkC37ZoE3TPGcZc7C2PGTscpCq3c/nsBr94Ex9sHph\n</preKeyPublic><preKeyPublic preKeyId="1198">BZe+OI5Os1T/t0hX+p6qEO3WAgTXRDtQ50rosnxJ6Wl/\n</preKeyPublic><preKeyPublic preKeyId="1199">BRhTmMPqt4/XEN7o2WIOnRG0QCizehJzUgaQCj0SwKxd\n</preKeyPublic><preKeyPublic preKeyId="1117">BXWdp+f0g+dY8hQV9KFNH7oj8SowyQQQ7FCP4MRLF8oV\n</preKeyPublic><preKeyPublic preKeyId="1127">BbtST7u2WvN5MlQzJFxIqAxjean25cA/z02JQTrTaJ99\n</preKeyPublic><preKeyPublic preKeyId="1111">BQ3yLDEQoL05BvqF8YMw6t4Kfo9I7M9XVSD0XSfo5fkK\n</preKeyPublic><preKeyPublic preKeyId="1171">BUP9ROE3IxdkwR4/0UazZ5CP5dKIeCt9C2zNbQrfzkd7\n</preKeyPublic><preKeyPublic preKeyId="1148">BSEKQMwRr/98Tsfct7hlQbKxo0roTUZ62DEW+ZEiARJ3\n</preKeyPublic><preKeyPublic preKeyId="1188">BTdcWvAdcHmh5vjoqJynYwKyTVk+0L11UUYTolgG2fJg\n</preKeyPublic><preKeyPublic preKeyId="1124">Be0sR2yKqrgf7/gQjEfz9wuEUH4183581jUARV9ulg0f\n</preKeyPublic><preKeyPublic preKeyId="1153">Bc2SDefTVsV4OEgjX3D3poPIMNkOsvhVBaR1SRg8GwIi\n</preKeyPublic><preKeyPublic preKeyId="1160">BcGHXa05eb+bKwVi0osx5f3n2A3iia9lfcr3xfehYxsC\n</preKeyPublic><preKeyPublic preKeyId="1164">Bb04DDRCq4QI6z9MAPAGjihlM2ftDprhbzGNsGejetov\n</preKeyPublic><preKeyPublic preKeyId="1136">BegW+9BluNQCJ99/OMg74PDZGcpghurbmAA6NiVpz55b\n</preKeyPublic><preKeyPublic preKeyId="1132">BX97hakzxHOmC1mAnyXKYzizbtc00CK9S1VAN5c8wuZE\n</preKeyPublic><preKeyPublic preKeyId="1146">BVzT8v/QHbpjFXdFwvACwYZiZ0qM63Nh+rc1gWQZNkYE\n</preKeyPublic><preKeyPublic preKeyId="1182">BSLV2/SBOPcQHBNFgGRRjhxNdwFaF13rrTO57yQR6L5V\n</preKeyPublic><preKeyPublic preKeyId="1130">BW36kwdJvt48JVfGIRxWSmornWJyw5Y6Sx/U0GYJ5Rpa\n</preKeyPublic><preKeyPublic preKeyId="1168">BUk/mq593k6lUkXmsWL5bawI+Gb+1BBddXi9+eoHcdNT\n</preKeyPublic><preKeyPublic preKeyId="1105">BSiIvJ3umTrGA6UPUA7REv27Ucw/nlTXKs7T2OZWGtBI\n</preKeyPublic><preKeyPublic preKeyId="1161">BcJFErixL6g1N4MSdE4fYw2bxkLLRFBJsfcsLSleZsAR\n</preKeyPublic><preKeyPublic preKeyId="1193">Be/gmeTuTxMZclzc+gIZ5UJgxXV/OcatVn3FIzY0etV1\n</preKeyPublic><preKeyPublic preKeyId="1177">BUUZ+J3g3ELez3/mmOWRR1l7xWYu1Dpgi++vpUZFCnow\n</preKeyPublic><preKeyPublic preKeyId="1108">BW6TEqID+6BikVpr/+U9NP3Kird5jRcAM42m02PiuFFd\n</preKeyPublic><preKeyPublic preKeyId="1125">BVnxwt9nG5DpWsSpPV7BGW7NWBckMdxSGnPMNPH9d7YB\n</preKeyPublic><preKeyPublic preKeyId="1102">BTW/vi9ql0FULgh2kN+a7BLLD23sUA5JMaWhEkglOSJ7\n</preKeyPublic><preKeyPublic preKeyId="1186">BYw9lnFOOHl1yxaqQGY5aGQCvgtQ/fFQERftYtjGzt8y\n</preKeyPublic><preKeyPublic preKeyId="1180">BaHLQ+763zEx8xsPJYrwjna5r0B+tUJg8cAdZw7mOsh2\n</preKeyPublic><preKeyPublic preKeyId="1197">BfxqTMo+LvvVT1i6EqZDhrIjfuiy1Y3dEM6N36SvViIV\n</preKeyPublic><preKeyPublic preKeyId="1185">Bewb9BN477PC7XTiDOATcNMIg6la/x2VevCFBJBH/51W\n</preKeyPublic><preKeyPublic preKeyId="1147">BVJBqiPXfihwS2TAyMKs684AfQbswFZIImDZGWZPCqZc\n</preKeyPublic><preKeyPublic preKeyId="1113">BUNs/Cl41D9ISC8JXgkdngu1mO+9jfZC4pKzK/TOze1f\n</preKeyPublic><preKeyPublic preKeyId="1157">BRrzghXzhfyoqZsoPAJo0s/cy7eryuZslQrMPXq5wOQg\n</preKeyPublic><preKeyPublic preKeyId="1163">BTvhFrW9Vhv3ZNxxAxdPQ9xII35uGUP3nBgVI7GwPywK\n</preKeyPublic><preKeyPublic preKeyId="1116">Bdf14skteZUieZzu/uEr+t3ofM05L/6Qcu30sSRAwRQu\n</preKeyPublic><preKeyPublic preKeyId="1191">BcdNTKKqVqvptKzUawaSOJSKWROupSGXn/Bce3Sspwwq\n</preKeyPublic><preKeyPublic preKeyId="1145">BVuoIlUbFhUe2Y8a8J58eNHMFSZGOgUw9hfXEoHqD7B9\n</preKeyPublic><preKeyPublic preKeyId="1169">BSwxN9k3/0PqC71u5qe5eXmKGBVZ8MgQzJ535dFoIlAf\n</preKeyPublic><preKeyPublic preKeyId="1175">BSnyyE1a2Da+VDJdfbruwZigaE28ck2U5oYzbumCLWxA\n</preKeyPublic><preKeyPublic preKeyId="1152">BYxhNXsbg6DdnmoUDyST6VuI9bZWmcJMh9SKHXDCLl4R\n</preKeyPublic><preKeyPublic preKeyId="1129">BarWstXLGhvYs6hzlUZ9QsAeFgZu1RdBoBYARQ6CUjEt\n</preKeyPublic><preKeyPublic preKeyId="1166">BUChwBtCpNtbQTkNbwF1Bb4Dp4jouuJ/u9nvn91+qosm\n</preKeyPublic><preKeyPublic preKeyId="1107">Bav0Xp9zpecbMRi/j7AKk53Ly9CabCmD9Snd5fJi6Cgy\n</preKeyPublic><preKeyPublic preKeyId="1133">BYKIs09WdN98Twn7e34rnvl14VtKDbeZA+iyFzieD7oK\n</preKeyPublic></prekeys></bundle></item></items></event></message>'),
('testing', 489, '001467007049062', 397, '<message to="testing@52.202.183.213" from="manh@52.202.183.213" id="j2z8QhcV"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.devicelist"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212383" node="eu.siacs.conversations.axolotl.devicelist"><list xmlns="eu.siacs.conversations.axolotl"><device id="35348830"/></list></item></items></event></message>'),
('testing', 490, '001467008089215', 9724, '<message to="testing@52.202.183.213" from="manh@52.202.183.213" id="wMLN17B3"><event xmlns="http://jabber.org/protocol/pubsub#event"><items node="eu.siacs.conversations.axolotl.bundles:35348830"><item id="861bfdfd-0c1c-49c3-8bde-da4e37f1d212384" node="eu.siacs.conversations.axolotl.bundles:35348830"><bundle xmlns="eu.siacs.conversations.axolotl"><signedPreKeyPublic signedPreKeyId="13">BdtXXnRXYyYRAV3phS4psOMKeDvLjFkpl4AqP7xFPtYw\n</signedPreKeyPublic><signedPreKeySignature>H4KaIO6GHFfq75TEc98eEbYhlEmegZ+ovcZ0eR2Tc5WEs8jbK7/3/NOfYGMn/OmU4IO7XCtztqq9\nUWDiMdaujA==\n</signedPreKeySignature><identityKey>BUd1IinnzYtmpjV28nEGG4BfZ4CpdKvIO1soEBe7wfxd\n</identityKey><prekeys><preKeyPublic preKeyId="1213">BZbknNDfZc1fac/A2P5OkDm0EwEH54rbLZ0oHX1CrBEY\n</preKeyPublic><preKeyPublic preKeyId="1287">BSxLxqW82a7fguRtOm6vlfJF0yNwHzCoKl1+/zztIHky\n</preKeyPublic><preKeyPublic preKeyId="1260">BTex0N3czmQjqL5QfeC53sC4oHRc+2oCzxuncAOlwhBk\n</preKeyPublic><preKeyPublic preKeyId="1201">Bb2fGyQS8mWN/6++Er1UCF0cz4tQGsD+xeP3CRQtphdA\n</preKeyPublic><preKeyPublic preKeyId="1262">BbCd6kMmhC1YtEMKhZiOFwgzxUTeh5GTxj3gsunzYABY\n</preKeyPublic><preKeyPublic preKeyId="1295">Be2BqBbcLO1zVfdS1TrwzL/UkPruGqe7tnPdtfQVVVp9\n</preKeyPublic><preKeyPublic preKeyId="1255">BTUHM+2RkC2RZy2JdIVrSe1u+Jzk5uKGbk7f6o1r+ShE\n</preKeyPublic><preKeyPublic preKeyId="1208">BYVxWiIaX7zH2yH3lKvhKD8jjZopcrM4ZkmgJncZAIBq\n</preKeyPublic><preKeyPublic preKeyId="1228">BczoViK9vEiaDBJht/X/S4Fw7oVFfgRXChSGDbz6StMj\n</preKeyPublic><preKeyPublic preKeyId="1215">BQd9Qi9r8gHPMsvo03noEY69R1289e/UvG1yVmjEmqZv\n</preKeyPublic><preKeyPublic preKeyId="1292">BaXj2DIvlLUyRqUezXY19bBr6ZW2G4giWPrpzsyGf9RQ\n</preKeyPublic><preKeyPublic preKeyId="1289">Bc27QSHNNrGzEoTsD6xvKp5Qk3+XrhsHXTA0fRBcqaFG\n</preKeyPublic><preKeyPublic preKeyId="1274">BSZ6SQ3zTOsyP86V3VCnn5Rmm41Y0TrCdQAdVn3phQYv\n</preKeyPublic><preKeyPublic preKeyId="1273">BazE4IDEyDjXkIdWQFLHIgCy4HcwYMjIMljyshXe/DEI\n</preKeyPublic><preKeyPublic preKeyId="1223">BfGN0DFSunaMObOpoKNI4w6un3IjW/1elzOuI7Nwib84\n</preKeyPublic><preKeyPublic preKeyId="1246">BZwamVBa7alFX58GciUpvjagfg3sajPTNseVqErvuX1g\n</preKeyPublic><preKeyPublic preKeyId="1299">BQIe65Y12zoiv1QkNo3RnbtSKdBLytkisTcMnWB05mZM\n</preKeyPublic><preKeyPublic preKeyId="1231">BSM9CKltsZZqtUybmw/KhWfsIYfVKchQoh3Mhmh846oP\n</preKeyPublic><preKeyPublic preKeyId="1280">BeJYFvWxEz3ZVBJ4pAMyQYiSyZq2G3IqfabziJrp2Ywj\n</preKeyPublic><preKeyPublic preKeyId="1270">BcyHq4+SpLT8wG8Far5WZ4fyhYHYO/AdXyydilJsGeYA\n</preKeyPublic><preKeyPublic preKeyId="1263">Bdhf1J+YY+6AEvvlQI2JTGQcRjGaCoO3ar7cPEoaGjxc\n</preKeyPublic><preKeyPublic preKeyId="1283">BZWTlDKQVvgBxl9i3LQI5UORpUu9kZHMsqfr/2fzPzRU\n</preKeyPublic><preKeyPublic preKeyId="1286">BS2SWtRon/zy6m4W4KJ5/ANXFAHfuIEuqMkMyuqCu+0o\n</preKeyPublic><preKeyPublic preKeyId="1245">BcrLi6kSfLuTfwLkE1SFbs5/lZCl6U8maL9FIfErMRQv\n</preKeyPublic><preKeyPublic preKeyId="1251">BUsEEhNjt1w08OovUEbGGH5efmYeFEoNmFgvzfOJMA8d\n</preKeyPublic><preKeyPublic preKeyId="1268">BYXPw28SZIkNs9r7f7saGQEL/21tZzMMgq4RH58JK8UK\n</preKeyPublic><preKeyPublic preKeyId="1204">BY/GAJUngPlxIUjtKtkf5LTtv6a1yIXLJUNWAlfsZYdW\n</preKeyPublic><preKeyPublic preKeyId="1226">BX0JZHwsOiR5A8SGdPCYl5EiE1DYSRfwipC2hDq/yFlo\n</preKeyPublic><preKeyPublic preKeyId="1277">BVPSqW25b4QXVqxnu6PirgZ//uOlyQ+pp0XBtteVRC82\n</preKeyPublic><preKeyPublic preKeyId="1240">BTpCRypx5Y8GVxzeqyD7xWa2tGJKHm3jdrpYLoJ1lRNd\n</preKeyPublic><preKeyPublic preKeyId="1297">BQNRXOOqgqpesq9qZBSndhN9UrIu3HixEPtzUehOS3gT\n</preKeyPublic><preKeyPublic preKeyId="1225">BTfGw4GM/QvMnbEUuCutXPuqq2tadNg5wk6mh20oRkc5\n</preKeyPublic><preKeyPublic preKeyId="1250">Bd/dXtASxW2MRkDphQhHrXC6OVXLH+wtQ+32TC0sjy48\n</preKeyPublic><preKeyPublic preKeyId="1221">BVJn/552Idpq8K5s805GrKPeQvpc76PqHTloPB3rKd8S\n</preKeyPublic><preKeyPublic preKeyId="1266">BW7/AfPn7WEg4WdkyhY1upcOq6h258UqWsWWbZd4aPU4\n</preKeyPublic><preKeyPublic preKeyId="1258">Bas+G+Y/Jr1TzDGjSxqrz6wTOeSJtzPJkV6HSLlBSzU9\n</preKeyPublic><preKeyPublic preKeyId="1207">Bf1QdBY4Zh0zskuRkQu3Icy29zhQd2R20Vo1afZTxVFI\n</preKeyPublic><preKeyPublic preKeyId="1254">BZ6BFL+AzoFftj/c+tOfTSsWD/3VFogORwvJ5k6N1FsV\n</preKeyPublic><preKeyPublic preKeyId="1249">BerG/tLWj+bfRes8l08o5DvBOfNm8SJPjXJMXTmHebMs\n</preKeyPublic><preKeyPublic preKeyId="1229">BWCi7mOqd5OX1rMqBhY44EIckp5rroz/9JAr8U02BM1o\n</preKeyPublic><preKeyPublic preKeyId="1264">BeqVPugfW89WiodgWsNqIRX3dgNy65KFX7/CJ++h/7cc\n</preKeyPublic><preKeyPublic preKeyId="1282">BckmcDSrpZjB8rXg9mGZ2JFz8zc9swwiDqlzDzvg7fhk\n</preKeyPublic><preKeyPublic preKeyId="1261">BW/AQcVm10JvMuLkcEYjTQPv09HBF4GZzdcG8EslBXgJ\n</preKeyPublic><preKeyPublic preKeyId="1259">BXLhGQD8aTr+TTex+NpfOlIadE0bP551CX4/u8BEH/4y\n</preKeyPublic><preKeyPublic preKeyId="1296">Bc4TQPDqFIXZgip1nCd3A949ocrI89pgAO0BBoinyOUE\n</preKeyPublic><preKeyPublic preKeyId="1252">BaBuyGxHSNaSnxwhMPPeLFVifihbwakk/5/qnjB4NxY5\n</preKeyPublic><preKeyPublic preKeyId="1233">BYC4ytfNhmmZjEwIVTP9wfSXt3n0StDfOJBJQNjb3BNA\n</preKeyPublic><preKeyPublic preKeyId="1241">BelqOhw6Gp6PEm4NRJLkZhY83uzoIia1KrMZVtQIu8M+\n</preKeyPublic><preKeyPublic preKeyId="1281">BYy0sqb7lwLyqrIfaYVJobvpCfclTMuhAJHFMlOtDx8F\n</preKeyPublic><preKeyPublic preKeyId="1230">Be8C34a/GetLuFJ/j0/E/LN1YwYbjsJbRQNNr9LL1AtU\n</preKeyPublic><preKeyPublic preKeyId="1243">BTLwvblhVPKnFjMA04NkcD8d6CqRK4qgTuUv5zXGWgIa\n</preKeyPublic><preKeyPublic preKeyId="1209">BS2qNcRNNubKm7MTTvsROHaZGq3f2gYE9W1ltcSinBI0\n</preKeyPublic><preKeyPublic preKeyId="1300">BY+Ly3oXsiXPB43oBfLefjhNuY57dpmZ6cUZEFcbEYo9\n</preKeyPublic><preKeyPublic preKeyId="1278">BckSUd540REyaWqqlZUfCD7uS7c31I5C+0UJEzoL4idy\n</preKeyPublic><preKeyPublic preKeyId="1212">BWeJiRaUnPTP+O5pVTVyB7ZTevTlyB1Yxfk5ntxnE8R2\n</preKeyPublic><preKeyPublic preKeyId="1205">BVDoSbscmvnWRQfW6kq4MirL1bfUIyw6svcDOSqWr7MK\n</preKeyPublic><preKeyPublic preKeyId="1294">BQHjCH7e44OMHpOPQZpJEefOe8p9ZUKkltNCVyYoum4u\n</preKeyPublic><preKeyPublic preKeyId="1224">BW/FQFZa2E/n+6rfdMxw2573h3ObinI8pVDWVh+lsJBi\n</preKeyPublic><preKeyPublic preKeyId="1256">BZW0YrwoHS/HZWItVfDxFzf7SfDqFRhKE7/1flhbxj1t\n</preKeyPublic><preKeyPublic preKeyId="1290">BQg9uJ/egO6TCG5BeFQHW8z/jAt4Xp/6N88nQcnNZ307\n</preKeyPublic><preKeyPublic preKeyId="1248">BaRecq7wXs8LrhonD5oKmP9R/ESaCqRd+Y/BvIMV2XMQ\n</preKeyPublic><preKeyPublic preKeyId="1206">BaFxM7GPKfdHvFFDyKdiVtb1dTSdm2WR2mOZXKXtf04X\n</preKeyPublic><preKeyPublic preKeyId="1275">BSsRW4C09t8CyoRgWawy4L+41VQx95PvrfsyaNU/6hln\n</preKeyPublic><preKeyPublic preKeyId="1244">BTLlUqW8B4MOWBUTkVUV3OSg/I9OIPIRBGM0jDR5dDlu\n</preKeyPublic><preKeyPublic preKeyId="1220">BZt8ikp6WaB0GivUL7aqHV8PFr8RtQzmO/frDbJujns3\n</preKeyPublic><preKeyPublic preKeyId="1232">Bdo0WWaE/UkV/kJtx/eUpjcTQxRt/5TK7okAQStASHl9\n</preKeyPublic><preKeyPublic preKeyId="1234">BSApCQX0eo4YIpvSKZw0sos6JTZW6cD0JZ2gwnruyYM+\n</preKeyPublic><preKeyPublic preKeyId="1214">BQH6eA2I63CLYCm1n52H9tKPAtb1hSM5SAr9d6PXC8JL\n</preKeyPublic><preKeyPublic preKeyId="1279">BcAtJC8r7T4VHry8F+Nt2LIOLMkywc57DV0FIFsIT/1B\n</preKeyPublic><preKeyPublic preKeyId="1269">BVAcBo/FwY+nmMRSYb16p2rGdWpIJjG73qbARAHvxHM6\n</preKeyPublic><preKeyPublic preKeyId="1227">BSguDGqM+37Y40xvsbD6QIrO70zgrEhD9I+xBD5oyftP\n</preKeyPublic><preKeyPublic preKeyId="1222">BVfBwnIN1yInW4hDVNbIBDESDN7drATC76jkJmJJ7exQ\n</preKeyPublic><preKeyPublic preKeyId="1239">BZKf/8oRgi7EO7S6OYFRHZyl+uofIC5FlC8Xj7U4Nkg8\n</preKeyPublic><preKeyPublic preKeyId="1236">BWtkqyLkQ5XlHEW+/a3Y/tnc0XpCujVbLB19zXXFp4Vj\n</preKeyPublic><preKeyPublic preKeyId="1217">BZsFL5yYUVl5LL3DKmjy/ft3g7mBhmf9LUjJNmgI3boy\n</preKeyPublic><preKeyPublic preKeyId="1210">BcKdURyLSUn/xfdn0Lkvmaedih/xqJ49HzKKf3ZNVisT\n</preKeyPublic><preKeyPublic preKeyId="1267">BanefDix0hxPFUbIBzt9GOn5fgG/0KmZ8fWevJhuw/hz\n</preKeyPublic><preKeyPublic preKeyId="1211">BVEiH84pq8dAi9Z9uQ6Va0cVylG2SkJ0EZazXwZFPVJK\n</preKeyPublic><preKeyPublic preKeyId="1203">BShAuEEhNMljv8jkU9mYROcthcF3NRtjz5KGoC+/zxJp\n</preKeyPublic><preKeyPublic preKeyId="1291">BceX5L0S8XQdj8MYT+e0HVqW5A1eabvqFfLR0NDY6hFt\n</preKeyPublic><preKeyPublic preKeyId="1265">BfO9zgh0gZp7kWbkpnpkZZs5a+J1lm4yn4ZLty3E2/Q6\n</preKeyPublic><preKeyPublic preKeyId="1271">BesX4xUdxzx4a7OzLKJlssBz6KTPIt1quBUMh3e01d5h\n</preKeyPublic><preKeyPublic preKeyId="1272">BbvnK3NzAUKHA/+VE3BEQNPXHL+DtBsg03D9Mivxx91X\n</preKeyPublic><preKeyPublic preKeyId="1242">BWgaL0t7b0apY+djC5hXFqUDKbxNyoTGxsyUGAtbpkg3\n</preKeyPublic><preKeyPublic preKeyId="1237">Baz2ATb6y7tI5R5lsjFDhDGetgXfdRCzWc+zP93wufsE\n</preKeyPublic><preKeyPublic preKeyId="1257">BboLGbziEfuOjq/rINrrd1eGQFc11M8dHxo9rtPog5p+\n</preKeyPublic><preKeyPublic preKeyId="1288">BaEJsCciY6t7VCq9zuQTRTWPNqYcLjOzC7Vxp8FErDdS\n</preKeyPublic><preKeyPublic preKeyId="1276">BT2tKdlWWBSWzBeex79+qkr60M4ubPQ5P9RGa4fGIlMT\n</preKeyPublic><preKeyPublic preKeyId="1298">BRdsrDDzpRJkTf4IRXwKJKO8eJvtexRDz4AtnlbIL8dW\n</preKeyPublic><preKeyPublic preKeyId="1202">BYKdGBtWfyNIHs/ILFSQg2bU+6+nuW0DUrHfVG67azgv\n</preKeyPublic><preKeyPublic preKeyId="1293">BZOg19gtVM/8gyisoVZgcRavQhf0GGftAdFRprBof4Qq\n</preKeyPublic><preKeyPublic preKeyId="1216">Bc2p7SqHXlA4wfhFQtlYul0V0PyuPoF0H2u4KTL3sHx/\n</preKeyPublic><preKeyPublic preKeyId="1235">BfdNvoiwk2My0kqtWP8v1iwvO3yAu1oYg4m3R+U9mmkw\n</preKeyPublic><preKeyPublic preKeyId="1284">BbaTGOiAhtcCgAOCFSEi2jAlcD5I5clY65scT3cNyFx8\n</preKeyPublic><preKeyPublic preKeyId="1253">BSAO+OfWVGRjjdurIkpymGqPIeFGgOtTy6lOXIjV0BIC\n</preKeyPublic><preKeyPublic preKeyId="1218">BZJpV9EEwA2NAvkmxjXhzFuERGVte6VD3g0JwgoYgUcJ\n</preKeyPublic><preKeyPublic preKeyId="1219">Be/cGJKjfOvxluy363/g5Krgi+I5WZiC4+gGg5z8ZhUS\n</preKeyPublic><preKeyPublic preKeyId="1238">Bawj4ioGbF0uNECYbBJXZmQ29aqVrJRh3qxNsA0SgucD\n</preKeyPublic><preKeyPublic preKeyId="1285">BclxYOOQwnCdr9taS5gVIIyI3tKDzoIvcFad9R1ydGpv\n</preKeyPublic><preKeyPublic preKeyId="1247">BafUeOa8cMGERyMMTWVi6Hx24auS32vnKUwI8mM9pudd\n</preKeyPublic></prekeys></bundle></item></items></event></message>');

-- --------------------------------------------------------

--
-- Table structure for table `ofPresence`
--

CREATE TABLE `ofPresence` (
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `offlinePresence` text COLLATE utf8_unicode_ci,
  `offlineDate` char(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofPresence`
--

INSERT INTO `ofPresence` (`username`, `offlinePresence`, `offlineDate`) VALUES
('1091197310947094', NULL, '001467225134255'),
('1744442462500896', NULL, '001467620792411'),
('264791810537022', NULL, '001467272086890'),
('289221224756538', NULL, '001467130791442'),
('490278004516867', NULL, '001467222573427'),
('573274006173107', NULL, '001467279952738'),
('duc', NULL, '001466674233368'),
('manh', NULL, '001467348855927'),
('testing', NULL, '001466570766217');

-- --------------------------------------------------------

--
-- Table structure for table `ofPrivacyList`
--

CREATE TABLE `ofPrivacyList` (
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDefault` tinyint(4) NOT NULL,
  `list` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofPrivacyList`
--

INSERT INTO `ofPrivacyList` (`username`, `name`, `isDefault`, `list`) VALUES
('1091197310947094', 'invisible', 0, '<list xmlns="jabber:iq:privacy" name="invisible"><item action="deny" order="1"><presence-out/></item></list>'),
('1744442462500896', 'invisible', 0, '<list xmlns="jabber:iq:privacy" name="invisible"><item action="deny" order="1"><presence-out/></item></list>');

-- --------------------------------------------------------

--
-- Table structure for table `ofPrivate`
--

CREATE TABLE `ofPrivate` (
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `namespace` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `privateData` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofProperty`
--

CREATE TABLE `ofProperty` (
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `propValue` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofProperty`
--

INSERT INTO `ofProperty` (`name`, `propValue`) VALUES
('adminConsole.port', '9090'),
('adminConsole.securePort', '9091'),
('connectionProvider.className', 'org.jivesoftware.database.DefaultConnectionProvider'),
('database.defaultProvider.connectionTimeout', '1.0'),
('database.defaultProvider.driver', 'com.mysql.jdbc.Driver'),
('database.defaultProvider.maxConnections', '25'),
('database.defaultProvider.minConnections', '5'),
('database.defaultProvider.password', 'd8878f199914e5c1da379359521ef9a80d3350f0534cbf30'),
('database.defaultProvider.serverURL', 'jdbc:mysql://localhost:3306/lumen?rewriteBatchedStatements=true'),
('database.defaultProvider.testAfterUse', 'false'),
('database.defaultProvider.testBeforeUse', 'false'),
('database.defaultProvider.testSQL', 'select 1'),
('database.defaultProvider.username', '91bc9de4ab1e8c6688e80fc9d76d0fc1025c3b068f3d9c5e'),
('locale', 'en'),
('org.jitsi.videobridge.ofmeet.focus.user.jid', 'focus@52.202.183.213'),
('org.jitsi.videobridge.ofmeet.focus.user.password', 'focus-password-1465284605475'),
('passwordKey', 'cxayOQ6D8splL2G'),
('plugin.callback_on_offline.token', '17eb2d05-9544-47c9-951f-48eb0a43a538'),
('plugin.callback_on_offline.url', 'http://localhost:8080/user/offline/callback/url'),
('plugin.restapi.secret', 'FwE5472qzL6U1hAs'),
('plugin.userservice.allowedIPs', ''),
('plugin.userservice.enabled', 'true'),
('plugin.userservice.httpAuth.enabled', 'false'),
('plugin.userservice.secret', '4E0PCET8'),
('provider.admin.className', 'org.jivesoftware.openfire.admin.DefaultAdminProvider'),
('provider.auth.className', 'org.jivesoftware.openfire.auth.DefaultAuthProvider'),
('provider.group.className', 'org.jivesoftware.openfire.group.DefaultGroupProvider'),
('provider.lockout.className', 'org.jivesoftware.openfire.lockout.DefaultLockOutProvider'),
('provider.securityAudit.className', 'org.jivesoftware.openfire.security.DefaultSecurityAuditProvider'),
('provider.user.className', 'org.jivesoftware.openfire.user.DefaultUserProvider'),
('provider.vcard.className', 'org.jivesoftware.openfire.vcard.DefaultVCardProvider'),
('sasl.scram-sha-1.iteration-count', '4096'),
('setup', 'true'),
('stream.management.active', 'true'),
('stream.management.requestFrequency', '5'),
('update.lastCheck', '1467530992701'),
('xmpp.auth.anonymous', 'true'),
('xmpp.domain', '52.202.183.213'),
('xmpp.filetransfer.enabled', 'true'),
('xmpp.session.conflict-limit', '0'),
('xmpp.socket.ssl.active', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `ofPubsubAffiliation`
--

CREATE TABLE `ofPubsubAffiliation` (
  `serviceID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nodeID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `affiliation` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofPubsubAffiliation`
--

INSERT INTO `ofPubsubAffiliation` (`serviceID`, `nodeID`, `jid`, `affiliation`) VALUES
('264791810537022@52.202.183.213', '264791810537022@52.202.183.213', '264791810537022@52.202.183.213', 'owner'),
('264791810537022@52.202.183.213', '264791810537022@52.202.183.213', '267814590231158@52.202.183.213', 'none'),
('264791810537022@52.202.183.213', '264791810537022@52.202.183.213', '573274006173107@52.202.183.213', 'none'),
('264791810537022@52.202.183.213', '264791810537022@52.202.183.213', 'testing@52.202.183.213', 'none'),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:115269431', '264791810537022@52.202.183.213', 'owner'),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1972311128', '264791810537022@52.202.183.213', 'owner'),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:613419525', '264791810537022@52.202.183.213', 'owner'),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:870893556', '264791810537022@52.202.183.213', 'owner'),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:97105940', '264791810537022@52.202.183.213', 'owner'),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', '264791810537022@52.202.183.213', 'owner'),
('267814590231158@52.202.183.213', '267814590231158@52.202.183.213', '1744442462500896@52.202.183.213', 'none'),
('267814590231158@52.202.183.213', '267814590231158@52.202.183.213', '264791810537022@52.202.183.213', 'none'),
('267814590231158@52.202.183.213', '267814590231158@52.202.183.213', '267814590231158@52.202.183.213', 'owner'),
('267814590231158@52.202.183.213', '267814590231158@52.202.183.213', '573274006173107@52.202.183.213', 'none'),
('267814590231158@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:377965415', '267814590231158@52.202.183.213', 'owner'),
('267814590231158@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:639207389', '267814590231158@52.202.183.213', 'owner'),
('267814590231158@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', '267814590231158@52.202.183.213', 'owner'),
('289221224756538@52.202.183.213', '289221224756538@52.202.183.213', '267814590231158@52.202.183.213', 'none'),
('289221224756538@52.202.183.213', '289221224756538@52.202.183.213', '289221224756538@52.202.183.213', 'owner'),
('289221224756538@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:283098001', '289221224756538@52.202.183.213', 'owner'),
('289221224756538@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', '289221224756538@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', '1091197310947094@52.202.183.213', 'none'),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', '1744442462500896@52.202.183.213', 'none'),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', '264791810537022@52.202.183.213', 'none'),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', '267814590231158@52.202.183.213', 'none'),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:102413526', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:111914099', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1322375213', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1616266733', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1692429210', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1789450853', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:2036790799', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:322425420', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:34844252', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:408840812', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:476544219', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:595495383', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:838599362', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:849659953', '573274006173107@52.202.183.213', 'owner'),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', '573274006173107@52.202.183.213', 'owner'),
('aloooooo@52.202.183.213', 'aloooooo@52.202.183.213', 'aloooooo@52.202.183.213', 'owner'),
('aloooooo@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1868039426', 'aloooooo@52.202.183.213', 'owner'),
('aloooooo@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:264657464', 'aloooooo@52.202.183.213', 'owner'),
('aloooooo@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', 'aloooooo@52.202.183.213', 'owner'),
('manh@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:35348830', 'manh@52.202.183.213', 'owner'),
('manh@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:766494350', 'manh@52.202.183.213', 'owner'),
('manh@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', 'manh@52.202.183.213', 'owner'),
('manh@52.202.183.213', 'manh@52.202.183.213', 'manh@52.202.183.213', 'owner'),
('manh@52.202.183.213', 'manh@52.202.183.213', 'testing@52.202.183.213', 'none'),
('pubsub', '', '52.202.183.213', 'owner'),
('testing@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:775189184', 'testing@52.202.183.213', 'owner'),
('testing@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', 'testing@52.202.183.213', 'owner'),
('testing@52.202.183.213', 'testing@52.202.183.213', '264791810537022@52.202.183.213', 'none'),
('testing@52.202.183.213', 'testing@52.202.183.213', 'duc@52.202.183.213', 'none'),
('testing@52.202.183.213', 'testing@52.202.183.213', 'manh@52.202.183.213', 'none'),
('testing@52.202.183.213', 'testing@52.202.183.213', 'testing@52.202.183.213', 'owner');

-- --------------------------------------------------------

--
-- Table structure for table `ofPubsubDefaultConf`
--

CREATE TABLE `ofPubsubDefaultConf` (
  `serviceID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `leaf` tinyint(4) NOT NULL,
  `deliverPayloads` tinyint(4) NOT NULL,
  `maxPayloadSize` int(11) NOT NULL,
  `persistItems` tinyint(4) NOT NULL,
  `maxItems` int(11) NOT NULL,
  `notifyConfigChanges` tinyint(4) NOT NULL,
  `notifyDelete` tinyint(4) NOT NULL,
  `notifyRetract` tinyint(4) NOT NULL,
  `presenceBased` tinyint(4) NOT NULL,
  `sendItemSubscribe` tinyint(4) NOT NULL,
  `publisherModel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `subscriptionEnabled` tinyint(4) NOT NULL,
  `accessModel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `replyPolicy` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `associationPolicy` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `maxLeafNodes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofPubsubDefaultConf`
--

INSERT INTO `ofPubsubDefaultConf` (`serviceID`, `leaf`, `deliverPayloads`, `maxPayloadSize`, `persistItems`, `maxItems`, `notifyConfigChanges`, `notifyDelete`, `notifyRetract`, `presenceBased`, `sendItemSubscribe`, `publisherModel`, `subscriptionEnabled`, `accessModel`, `language`, `replyPolicy`, `associationPolicy`, `maxLeafNodes`) VALUES
('1744442462500896@52.202.183.213', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('1744442462500896@52.202.183.213', 1, 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('264791810537022@52.202.183.213', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('264791810537022@52.202.183.213', 1, 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('267814590231158@52.202.183.213', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('267814590231158@52.202.183.213', 1, 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('289221224756538@52.202.183.213', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('289221224756538@52.202.183.213', 1, 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('573274006173107@52.202.183.213', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('573274006173107@52.202.183.213', 1, 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('aloooooo@52.202.183.213', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('aloooooo@52.202.183.213', 1, 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('manh@52.202.183.213', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('manh@52.202.183.213', 1, 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('pubsub', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 'open', 'English', NULL, 'all', -1),
('pubsub', 1, 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 'open', 'English', NULL, 'all', -1),
('testing@52.202.183.213', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 'presence', 'English', NULL, 'all', -1),
('testing@52.202.183.213', 1, 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 'presence', 'English', NULL, 'all', -1);

-- --------------------------------------------------------

--
-- Table structure for table `ofPubsubItem`
--

CREATE TABLE `ofPubsubItem` (
  `serviceID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nodeID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creationDate` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `payload` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofPubsubNode`
--

CREATE TABLE `ofPubsubNode` (
  `serviceID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nodeID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `leaf` tinyint(4) NOT NULL,
  `creationDate` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `modificationDate` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deliverPayloads` tinyint(4) NOT NULL,
  `maxPayloadSize` int(11) DEFAULT NULL,
  `persistItems` tinyint(4) DEFAULT NULL,
  `maxItems` int(11) DEFAULT NULL,
  `notifyConfigChanges` tinyint(4) NOT NULL,
  `notifyDelete` tinyint(4) NOT NULL,
  `notifyRetract` tinyint(4) NOT NULL,
  `presenceBased` tinyint(4) NOT NULL,
  `sendItemSubscribe` tinyint(4) NOT NULL,
  `publisherModel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `subscriptionEnabled` tinyint(4) NOT NULL,
  `configSubscription` tinyint(4) NOT NULL,
  `accessModel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `payloadType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bodyXSLT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataformXSLT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `replyPolicy` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `associationPolicy` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maxLeafNodes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofPubsubNode`
--

INSERT INTO `ofPubsubNode` (`serviceID`, `nodeID`, `leaf`, `creationDate`, `modificationDate`, `parent`, `deliverPayloads`, `maxPayloadSize`, `persistItems`, `maxItems`, `notifyConfigChanges`, `notifyDelete`, `notifyRetract`, `presenceBased`, `sendItemSubscribe`, `publisherModel`, `subscriptionEnabled`, `configSubscription`, `accessModel`, `payloadType`, `bodyXSLT`, `dataformXSLT`, `creator`, `description`, `language`, `name`, `replyPolicy`, `associationPolicy`, `maxLeafNodes`) VALUES
('264791810537022@52.202.183.213', '264791810537022@52.202.183.213', 0, '001465294846744', '001465294846744', NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 0, 'presence', '', '', '', '264791810537022@52.202.183.213', '', 'English', '', NULL, 'all', -1),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:115269431', 1, '001465314520275', '001465314520275', '264791810537022@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '264791810537022@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1972311128', 1, '001466404397034', '001466404397034', '264791810537022@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '264791810537022@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:613419525', 1, '001465294852759', '001465294852759', '264791810537022@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '264791810537022@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:870893556', 1, '001466073808075', '001466073808075', '264791810537022@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '264791810537022@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:97105940', 1, '001466158121386', '001466158121386', '264791810537022@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '264791810537022@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('264791810537022@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', 1, '001465294853909', '001465294853909', '264791810537022@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '264791810537022@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('267814590231158@52.202.183.213', '267814590231158@52.202.183.213', 0, '001466158664626', '001466158664626', NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 0, 'presence', '', '', '', '267814590231158@52.202.183.213', '', 'English', '', NULL, 'all', -1),
('267814590231158@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:377965415', 1, '001466158666920', '001466158666920', '267814590231158@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '267814590231158@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('267814590231158@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:639207389', 1, '001466404466923', '001466404466923', '267814590231158@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '267814590231158@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('267814590231158@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', 1, '001466158671132', '001466158671132', '267814590231158@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '267814590231158@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('289221224756538@52.202.183.213', '289221224756538@52.202.183.213', 0, '001466158729197', '001466158729197', NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 0, 'presence', '', '', '', '289221224756538@52.202.183.213', '', 'English', '', NULL, 'all', -1),
('289221224756538@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:283098001', 1, '001466158731860', '001466158731860', '289221224756538@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '289221224756538@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('289221224756538@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', 1, '001466158733050', '001466158733050', '289221224756538@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '289221224756538@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', 0, '001465294482214', '001465294482214', NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', NULL, 'all', -1),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:102413526', 1, '001465405433590', '001465405433590', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:111914099', 1, '001465444832797', '001465444832797', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1322375213', 1, '001465356676814', '001465356676814', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1616266733', 1, '001465370872988', '001465370872988', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1692429210', 1, '001465380865322', '001465380865322', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1789450853', 1, '001465402683859', '001465402683859', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:2036790799', 1, '001465402124430', '001465402124430', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:322425420', 1, '001465456903556', '001465456903556', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:34844252', 1, '001465294486850', '001465294486850', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:408840812', 1, '001465431204795', '001465431204795', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:476544219', 1, '001465297163817', '001465297163817', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:595495383', 1, '001465311189503', '001465311189503', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:838599362', 1, '001465446393059', '001465446393059', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:849659953', 1, '001465383390675', '001465383390675', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('573274006173107@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', 1, '001465294488116', '001465294488116', '573274006173107@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', '573274006173107@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('aloooooo@52.202.183.213', 'aloooooo@52.202.183.213', 0, '001466154361444', '001466154361444', NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 0, 'presence', '', '', '', 'aloooooo@52.202.183.213', '', 'English', '', NULL, 'all', -1),
('aloooooo@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:1868039426', 1, '001466154364033', '001466154364033', 'aloooooo@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', 'aloooooo@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('aloooooo@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:264657464', 1, '001466158570927', '001466158570927', 'aloooooo@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', 'aloooooo@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('aloooooo@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', 1, '001466154364628', '001466154364628', 'aloooooo@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', 'aloooooo@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('manh@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:35348830', 1, '001465535317384', '001465535317384', 'manh@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', 'manh@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('manh@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:766494350', 1, '001466068102126', '001466068102126', 'manh@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', 'manh@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('manh@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', 1, '001465535318583', '001465535318583', 'manh@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', 'manh@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('manh@52.202.183.213', 'manh@52.202.183.213', 0, '001465535313886', '001465535313886', NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 0, 'presence', '', '', '', 'manh@52.202.183.213', '', 'English', '', NULL, 'all', -1),
('pubsub', '', 0, '001465284549321', '001465284549321', NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 0, 'open', '', '', '', '52.202.183.213', '', 'English', '', NULL, 'all', -1),
('testing@52.202.183.213', 'eu.siacs.conversations.axolotl.bundles:775189184', 1, '001466155846279', '001466155846279', 'testing@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', 'testing@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('testing@52.202.183.213', 'eu.siacs.conversations.axolotl.devicelist', 1, '001466155855896', '001466155855896', 'testing@52.202.183.213', 1, 5120, 0, -1, 1, 1, 1, 0, 1, 'publishers', 1, 0, 'presence', '', '', '', 'testing@52.202.183.213', '', 'English', '', 'owner', NULL, 0),
('testing@52.202.183.213', 'testing@52.202.183.213', 0, '001466155843435', '001466155843435', NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'publishers', 1, 0, 'presence', '', '', '', 'testing@52.202.183.213', '', 'English', '', NULL, 'all', -1);

-- --------------------------------------------------------

--
-- Table structure for table `ofPubsubNodeGroups`
--

CREATE TABLE `ofPubsubNodeGroups` (
  `serviceID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nodeID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rosterGroup` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofPubsubNodeJIDs`
--

CREATE TABLE `ofPubsubNodeJIDs` (
  `serviceID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nodeID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `associationType` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofPubsubSubscription`
--

CREATE TABLE `ofPubsubSubscription` (
  `serviceID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nodeID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `deliver` tinyint(4) NOT NULL,
  `digest` tinyint(4) NOT NULL,
  `digest_frequency` int(11) NOT NULL,
  `expire` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `includeBody` tinyint(4) NOT NULL,
  `showValues` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscriptionType` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subscriptionDepth` tinyint(4) NOT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofPubsubSubscription`
--

INSERT INTO `ofPubsubSubscription` (`serviceID`, `nodeID`, `id`, `jid`, `owner`, `state`, `deliver`, `digest`, `digest_frequency`, `expire`, `includeBody`, `showValues`, `subscriptionType`, `subscriptionDepth`, `keyword`) VALUES
('264791810537022@52.202.183.213', '264791810537022@52.202.183.213', '4pWYF1doIWEznyJ05tSjHUNqCg5cxRsFiSvD9T10', '573274006173107@52.202.183.213', '573274006173107@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('264791810537022@52.202.183.213', '264791810537022@52.202.183.213', 'ERT0sV13K9YGK5e05h6j3Twl3eMzYRfAd6xFgfH4', '267814590231158@52.202.183.213', '267814590231158@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('264791810537022@52.202.183.213', '264791810537022@52.202.183.213', 'V8Q9POCVK4iXmesDFI0Y5G5L6HqheG4cvI4AcfkC', 'testing@52.202.183.213', 'testing@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('267814590231158@52.202.183.213', '267814590231158@52.202.183.213', 'gdwC7GQ7rkPC0mN3Yk9tIxJFDbtSrd2MmD7F7C3f', '1744442462500896@52.202.183.213', '1744442462500896@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('267814590231158@52.202.183.213', '267814590231158@52.202.183.213', 'Qn9ilEKH7D1tdVyG4bX7piSzxVTnfG8zjugUcWp0', '264791810537022@52.202.183.213', '264791810537022@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('267814590231158@52.202.183.213', '267814590231158@52.202.183.213', 't0754z1nX9jFfkXMhF5TPJH4093JzV4Qq5jNQ4vv', '573274006173107@52.202.183.213', '573274006173107@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('267814590231158@52.202.183.213', '267814590231158@52.202.183.213', 'Wf224dNN8V519v21jvOLTrvY3AyRPPRTLHg0Yesv', '267814590231158@52.202.183.213', '267814590231158@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('289221224756538@52.202.183.213', '289221224756538@52.202.183.213', '9F3N6bi8z1OJ4aYAAL5itkiPuaIwRp75LVSw3Eby', '267814590231158@52.202.183.213', '267814590231158@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', 'ch9R291e22Sp30uC82x4vy2tuXLo4MEV7FO8qz4H', '1091197310947094@52.202.183.213', '1091197310947094@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', 'uTs6v061mXHf4A0TdSrjC2UfK8MBMA169Pv34yWP', '267814590231158@52.202.183.213', '267814590231158@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', 'wMa35kKB840q7cC5kQtwTPdv1u863WSpC64b85b8', '1744442462500896@52.202.183.213', '1744442462500896@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', 'Wsrb0XL3p5GxAT75WsFL61rP8791F9kov0d0Y0TC', '264791810537022@52.202.183.213', '264791810537022@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('573274006173107@52.202.183.213', '573274006173107@52.202.183.213', 'Wy648m2B1Y90YpUueTawXV6Ye8UI3s9uDt5ODui1', '573274006173107@52.202.183.213', '573274006173107@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('manh@52.202.183.213', 'manh@52.202.183.213', 'IWXDFUfha6GeiW4ewcd04ArWQq9h1b7HcQF7pMWl', 'testing@52.202.183.213', 'testing@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('testing@52.202.183.213', 'testing@52.202.183.213', '2txCSvtvElO83DTHc57NaTyLocnO2QOuqwX4NQtH', 'testing@52.202.183.213', 'testing@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('testing@52.202.183.213', 'testing@52.202.183.213', '4vdN305xGRaRbdCbtudDMw2Mt85SV6R4qA8tWE29', 'manh@52.202.183.213', 'manh@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('testing@52.202.183.213', 'testing@52.202.183.213', 'jN8bJ0DK8nUnz5FqttpIB7vO6gbNwBqXSxAreg68', 'duc@52.202.183.213', 'duc@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL),
('testing@52.202.183.213', 'testing@52.202.183.213', 'SfgpUouxraYDy7t2lSbT0wRm7IkuaTX6897Mu9ni', '264791810537022@52.202.183.213', '264791810537022@52.202.183.213', 'subscribed', 1, 0, 86400000, NULL, 0, ' ', 'items', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ofRemoteServerConf`
--

CREATE TABLE `ofRemoteServerConf` (
  `xmppDomain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remotePort` int(11) DEFAULT NULL,
  `permission` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofRoster`
--

CREATE TABLE `ofRoster` (
  `rosterID` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `jid` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `sub` tinyint(4) NOT NULL,
  `ask` tinyint(4) NOT NULL,
  `recv` tinyint(4) NOT NULL,
  `nick` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofRoster`
--

INSERT INTO `ofRoster` (`rosterID`, `username`, `jid`, `sub`, `ask`, `recv`, `nick`) VALUES
(2, 'testing', '573274006173107@52.202.183.213', 0, -1, -1, 'Test User'),
(4, 'testing', 'duc@52.202.183.213', 2, 0, -1, NULL),
(5, 'duc', 'testing@52.202.183.213', 1, -1, 1, NULL),
(6, 'testing', '5732740061731071@52.202.183.213', 2, 0, -1, NULL),
(7, 'testing', '57327400173107@52.202.183.213', 2, 0, -1, NULL),
(8, 'testing', 'testing@52.202.183.213', 3, -1, -1, NULL),
(9, 'testing', 'manh@52.202.183.213', 3, -1, -1, NULL),
(10, 'manh', 'testing@52.202.183.213', 3, -1, -1, NULL),
(13, 'testing', '264791810537022@52.202.183.213', 3, -1, -1, NULL),
(14, '264791810537022', 'testing@52.202.183.213', 3, -1, -1, NULL),
(21, '267814590231158', '264791810537022@52.202.183.213', 3, -1, -1, ''),
(22, '264791810537022', '267814590231158@52.202.183.213', 3, -1, -1, NULL),
(26, '267814590231158', '267814590231158@52.202.183.213', 3, -1, -1, ''),
(27, 'testing', 'focus@52.202.183.213', 1, -1, -1, NULL),
(28, 'focus', 'testing@52.202.183.213', 2, -1, -1, NULL),
(29, '573274006173107', '52.202.183.213', 0, -1, -1, ''),
(30, '267814590231158', '52.202.183.213', 0, -1, -1, ''),
(31, '267814590231158', '289221224756538@52.202.183.213', 1, -1, 1, '289221224756538'),
(32, '289221224756538', '267814590231158@52.202.183.213', 2, 0, -1, NULL),
(33, '267814590231158', 'aloooooo@52.202.183.213', 0, 0, -1, ''),
(34, 'aloooooo', '267814590231158@52.202.183.213', 0, -1, 1, NULL),
(35, '267814590231158', 'admin@52.202.183.213', 0, 0, -1, ''),
(36, 'admin', '267814590231158@52.202.183.213', 0, -1, 1, NULL),
(37, '267814590231158', 'duc@52.202.183.213', 0, 0, -1, ''),
(38, 'duc', '267814590231158@52.202.183.213', 0, -1, 1, NULL),
(39, '267814590231158', 'focus@52.202.183.213', 1, -1, -1, ''),
(40, 'focus', '267814590231158@52.202.183.213', 2, -1, -1, NULL),
(41, '267814590231158', 'manh@52.202.183.213', 0, 0, -1, ''),
(42, 'manh', '267814590231158@52.202.183.213', 0, -1, 1, NULL),
(43, '267814590231158', 'testing@52.202.183.213', 0, 0, -1, ''),
(44, 'testing', '267814590231158@52.202.183.213', 0, -1, 1, NULL),
(45, '267814590231158', '1744442462500896@52.202.183.213', 3, -1, -1, '1744442462500896'),
(46, '267814590231158', '0@52.202.183.213', 0, 0, -1, ''),
(54, 'focus', '573274006173107@52.202.183.213', 0, -1, -1, NULL),
(690, '573274006173107', '267814590231158@52.202.183.213', 3, -1, -1, '267814590231158'),
(691, '267814590231158', '573274006173107@52.202.183.213', 3, -1, -1, NULL),
(692, '573274006173107', '1744442462500896@52.202.183.213', 3, -1, -1, '1744442462500896'),
(693, '573274006173107', '573274006173107@52.202.183.213', 3, -1, -1, ''),
(694, '573274006173107', '264791810537022@52.202.183.213', 3, -1, -1, 'Test User'),
(695, '264791810537022', '573274006173107@52.202.183.213', 3, -1, -1, NULL),
(696, '1744442462500896', '573274006173107@52.202.183.213', 3, -1, -1, NULL),
(697, '1744442462500896', '267814590231158@52.202.183.213', 3, -1, -1, NULL),
(698, '573274006173107', '1091197310947094@52.202.183.213', 2, 0, -1, NULL),
(699, '1091197310947094', '573274006173107@52.202.183.213', 1, -1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ofRosterGroups`
--

CREATE TABLE `ofRosterGroups` (
  `rosterID` bigint(20) NOT NULL,
  `rank` tinyint(4) NOT NULL,
  `groupName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofSASLAuthorized`
--

CREATE TABLE `ofSASLAuthorized` (
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `principal` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofSecurityAuditLog`
--

CREATE TABLE `ofSecurityAuditLog` (
  `msgID` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `entryStamp` bigint(20) NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `node` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofSecurityAuditLog`
--

INSERT INTO `ofSecurityAuditLog` (`msgID`, `username`, `entryStamp`, `summary`, `node`, `details`) VALUES
(1, 'admin', 1465284647241, 'deleted plugin ofmeet', 'ip-172-31-52-162', NULL),
(2, 'admin', 1465288476866, 'created new user huynhnt', 'ip-172-31-52-162', 'name = null, email = null, admin = false'),
(3, 'admin', 1465288530395, 'deleted user huynhnt', 'ip-172-31-52-162', 'full jid was huynhnt@52.202.183.213'),
(4, 'admin', 1465289855616, 'deleted user tuiday', 'ip-172-31-52-162', 'full jid was tuiday@52.202.183.213'),
(5, 'admin', 1465289900273, 'deleted user tuiday', 'ip-172-31-52-162', 'full jid was tuiday@52.202.183.213'),
(6, 'admin', 1465290015889, 'deleted user tuiday', 'ip-172-31-52-162', 'full jid was tuiday@52.202.183.213'),
(7, 'admin', 1465293246749, 'deleted user alotuiday', 'ip-172-31-52-162', 'full jid was alotuiday@52.202.183.213'),
(8, 'admin', 1465525684775, 'created new user duc', 'ip-172-31-52-162', 'name = null, email = null, admin = false'),
(9, 'admin', 1465535279475, 'created new user manh', 'ip-172-31-52-162', 'name = null, email = null, admin = false'),
(10, 'admin', 1466154282334, 'created new user aloooooo', 'ip-172-31-52-162', 'name = null, email = null, admin = false'),
(11, 'admin', 1466191382282, 'deleted user 1744442462500896', 'ip-172-31-52-162', 'full jid was 1744442462500896@52.202.183.213'),
(12, 'admin', 1466768066937, 'deleted user tuiday', 'ip-172-31-52-162', 'full jid was tuiday@52.202.183.213');

-- --------------------------------------------------------

--
-- Table structure for table `ofUser`
--

CREATE TABLE `ofUser` (
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `storedKey` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serverKey` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iterations` int(11) DEFAULT NULL,
  `plainPassword` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encryptedPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creationDate` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `modificationDate` char(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofUser`
--

INSERT INTO `ofUser` (`username`, `storedKey`, `serverKey`, `salt`, `iterations`, `plainPassword`, `encryptedPassword`, `name`, `email`, `creationDate`, `modificationDate`) VALUES
('1091197310947094', 'iBEEOLYNb2nHOpi4JkxN7mIRRkk=', 'radgdXftgE0D/Lbpe/hWSxha5xc=', 'yc7+No3zHAEqpD9XhkeJyJAiGa1M/1lE', 4096, NULL, '0f91e1196034a965e5af9b0f81d214a3159b3a85eb5536eb', 'Phát Nguy?n', 'test@localhost.de', '001466962853987', '001466962853987'),
('1744442462500896', 'OXNKW3fm/SFlrpToDnrpA7P/lUo=', '/4BU/3ACGbLvlqpfmx1g7ZFtJWo=', 'AbcUwo1NeSmddSi7BNt/yKgUFjPYWN1u', 4096, NULL, '9a8aa7716f8f7ad061150d69fe2a7b57f61b49a90d62bb09', NULL, NULL, '001466504899923', '001466504899923'),
('264791810537022', '+1l++k1h0uC43OJzCVLgzDmDFPk=', 'STNkmQ1kkTMqcLcIrhMifAg68sk=', 'OI6iIU9hR4k4hOKMvvC7758Y9T81jkTs', 4096, NULL, 'a6590c18cd7bcc87bf8e57ffdf594ac3ac7f88b583eca691', 'Test User', NULL, '001465294820600', '001465294820600'),
('267814590231158', '7F6CSJwyTxEYJc0eE8/nbnPPIck=', 'sTKdR2/qnj3RHS2YSEAE5p1KtRA=', 'urtgsnfmeUK8h4N1m77g5oQu3ZpUhbSu', 4096, NULL, 'cae6a11d5751166ec3d4ef316681fcf8a5173acf469e71c4', NULL, NULL, '001465726999596', '001465726999596'),
('289221224756538', 'srrOrNoDbXW5xeXu2s6k2alAl2Y=', 'E0oKIz/yDAIVHuPzqyKVUEeXk24=', 'ZYcBOg4c9S5DmhBRGlypR/L4BrU2N6dK', 4096, NULL, '13e354e5f793e35cb42fde6c9b466599ba7e2babb6291959', NULL, NULL, '001465726104164', '001465726104164'),
('490278004516867', 'iM+4xZjQ8j1QFryPscVDpX1XSxY=', 'Fksv9NtRgGTd1IlaHfOfctbchOk=', 'NAjF8tJfxxjtElzABXG56nkuXCAGCL+i', 4096, NULL, 'cbf0116f021907d3193502ae50ccfb4b0c97cd422a1d06e6', '???', 'test@localhost.de', '001467182068335', '001467182068335'),
('573274006173107', 'JM0uDUPx0dm4FsjVYysANkDPLkY=', 'frXJLl7jjsSDP8/WpImXXFBcLnA=', 'VM0UNwCie2EfVpgvuwLDYc6bJpz5hMnU', 4096, NULL, 'f0e9f3dc8a39e409fdf2c2466eca71173dcad94a8f949036', 'Test User', NULL, '001465293942386', '001465293942386'),
('admin', 'umXq5Q5bz6NSc7s/NXwTFPANSV4=', '71LGUzM84lU5w1JwCbposjDA4e0=', 'twJK5jAN+cAa8RPpwJ/CL84WjVsIpuf3', 4096, NULL, '66458f15579d235c71075b4f8b330591b7a098a769e60155', 'Administrator', 'admin@example.com', '001465284544570', '0'),
('aloooooo', 'w/INVAAF52BQnqHpFCC40QMH3+w=', '4as/JGiKyo+Yq3HlAcPzdrIrhIc=', 'VTFudllcq9RChSWuJiu2cRJUyO3ZkqtI', 4096, NULL, '13669ee6dd4f510ec500ede745acfae9537eca066fd3c6ab', NULL, NULL, '001466154282315', '001466154282315'),
('duc', 'kE1MWfEbHN+B1YG9PADZvn0RjaY=', '34TSWu4aNdX8mP2KVhycWL/7IU0=', 'ZPzCJHLyLLnR8tr/uJCi+96urEabxWPX', 4096, NULL, 'ad3b06a1c0995ee75b197acddaf14aaf', NULL, NULL, '001465525684755', '001465525684755'),
('focus', 'mTsW3ow5rO4YQusRqKw51NSJRxA=', '4E4fiAKu8OhMMy+sl9umznNfVlw=', 'Tn/Ik0Ha6wTjuHGKE0o3wiZNHmtnrART', 4096, NULL, 'e6a685db4fbbff64f0313b5c244b224c7e1f6714b12eaabd36b6e598a7cba95d965390bc16b43e77ef08f42a85bce53c7e37e6699c60138c660df4beffc20a49a3dfb3e1386c4432', 'Openfire Meetings Focus User', 'focus@52.202.183.213', '001465284605476', '001465284605476'),
('manh', 'yGFonItluNUGcdvXeSoDz9snhJs=', 'leqP4jVzTMJyeSfK6kov1dULbHg=', 'SOtTlAnJeirTcoNhukcZN30V29X9wdp4', 4096, NULL, '00e6ad03a82e28c1acd308df0deab131', NULL, NULL, '001465535279442', '001465535279442'),
('testing', 'hoQd0vLWe6TCeAGXdU1kLLRJ+OE=', 'P7ZX0qvgmHwPxpljPA1QGrSMY7c=', 'Clk53/7GsgdsNF1qNFmDQEpfCfgnHHMv', 4096, NULL, 'ed827b33aa636b1a9730266d90fba5acfffe22e8e632a731', 'Test User', NULL, '001465287152691', '001465287152691');

-- --------------------------------------------------------

--
-- Table structure for table `ofUserFlag`
--

CREATE TABLE `ofUserFlag` (
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `startTime` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endTime` char(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofUserProp`
--

CREATE TABLE `ofUserProp` (
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `propValue` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofVCard`
--

CREATE TABLE `ofVCard` (
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `vcard` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofVCard`
--

INSERT INTO `ofVCard` (`username`, `vcard`) VALUES
('1091197310947094', '<vCard xmlns="vcard-temp"><PHOTO><TYPE>image/jpeg</TYPE>\n<BINVAL>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</BINVAL>\n</PHOTO>\n</vCard>'),
('1744442462500896', '<vCard xmlns="vcard-temp"><FN/>\n<NICKNAME>1744442462500896</NICKNAME>\n<PHOTO><BINVAL>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</BINVAL>\n<TYPE>image/jpeg</TYPE>\n</PHOTO>\n</vCard>'),
('264791810537022', '<vCard xmlns="vcard-temp"><FN/>\n<NICKNAME>264791810537022</NICKNAME>\n</vCard>'),
('267814590231158', '<vCard xmlns="vcard-temp"><FN/>\n<NICKNAME>267814590231158</NICKNAME>\n</vCard>'),
('289221224756538', '<vCard xmlns="vcard-temp"><FN/>\n<NICKNAME>289221224756538</NICKNAME>\n</vCard>'),
('573274006173107', '<vCard xmlns="vcard-temp"><FN/>\n<NICKNAME>573274006173107</NICKNAME>\n</vCard>'),
('testing', '<vCard xmlns="vcard-temp"><FN/>\n<NICKNAME>testing</NICKNAME>\n</vCard>');

-- --------------------------------------------------------

--
-- Table structure for table `ofVersion`
--

CREATE TABLE `ofVersion` (
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ofVersion`
--

INSERT INTO `ofVersion` (`name`, `version`) VALUES
('openfire', 22);

-- --------------------------------------------------------

--
-- Table structure for table `ttChats`
--

CREATE TABLE `ttChats` (
  `id` int(11) NOT NULL,
  `like` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passive` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ttChats`
--

INSERT INTO `ttChats` (`id`, `like`, `passive`, `created_at`, `updated_at`) VALUES
(111, '1091197310947094', '573274006173107', '2016-06-29 08:33:16', '2016-06-29 08:33:16'),
(109, '490278004516867', '573274006173107', '2016-06-29 08:33:16', '2016-06-29 08:33:16'),
(110, '573274006173107', '1091197310947094', '2016-06-29 08:33:16', '2016-06-29 08:33:16'),
(108, '573274006173107', '490278004516867', '2016-06-29 08:33:16', '2016-06-29 08:33:16'),
(114, '1091197310947094', '490278004516867', '2016-06-29 09:21:31', '2016-06-29 09:21:31'),
(115, '490278004516867', '1091197310947094', '2016-06-29 09:21:31', '2016-06-29 09:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `ttDevices`
--

CREATE TABLE `ttDevices` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cloud_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ttDevices`
--

INSERT INTO `ttDevices` (`id`, `name`, `cloud_id`, `updated_at`, `created_at`) VALUES
(22, '573274006173107', 'APA91bFxVMRWyVCZRO6Xtrga3FxmXOjVr1Vhi1QJStmoiXHCajDrybBXnme--ZaLG_ZLy9eLegscua1H9GBgsdbYAn6XyB_Z_u9Cc9zMNSFB0J9LVVw02H_G9nqPUuM9YP73GiQ90mlUwTjBw31aQbukVO2I9U515A', '2016-06-06 09:05:04', '2016-06-06 09:05:04'),
(21, '573274006173107', 'APA91bHQAHD5taw9UP8V5fNKuga-X-L-Hy_MoQZP-xMvr2uEPbe1LxkNuzAiYUoqndyHgvzdSqF1hO1gmjQTlNu5AqWypRQHf4W0jKfkTNqOuCF9XPbuPfxJ5ZBcZ9wh04DQ_Uquh_hUThIXwOV-wW162r-UvMQ6bA', '2016-06-02 12:50:29', '2016-06-02 12:50:29'),
(20, '267814590231158', 'APA91bHQAHD5taw9UP8V5fNKuga-X-L-Hy_MoQZP-xMvr2uEPbe1LxkNuzAiYUoqndyHgvzdSqF1hO1gmjQTlNu5AqWypRQHf4W0jKfkTNqOuCF9XPbuPfxJ5ZBcZ9wh04DQ_Uquh_hUThIXwOV-wW162r-UvMQ6bA', '2016-06-02 11:00:34', '2016-06-02 11:00:34'),
(19, '573274006173107', 'APA91bH9FZe--HJaNc7yus_B5MPn6l-TVuFISc6hh3j6pJjVEkjqDm3bQn344VDdAx_okmftoOWTHSQLJiQ9R2oTclvtLZtin5antSD88_7ZeJdzIf87qG5-gr04XODADfZG1SZ8fPPNZi_S2tHWeqOuEJjxgZ2guw', '2016-06-02 10:43:33', '2016-06-02 10:43:33'),
(23, '573274006173107', 'APA91bEIewqyYRwQdQuIGoZ944x9sZOAKyrL3vuwDY04qwPrUGfSL2JwAJQCz_oKQz4xsUTbZEzu_D6teGryZYtRwSE8M2J16oMPn24vImTP3IBag9R9QSjdC3dSSObvFYZVldneW1Luw6snXthgYtRlWnP2WeUNdg', '2016-06-22 06:44:12', '2016-06-22 06:44:12'),
(24, '264791810537022', 'APA91bHjEgDlnJQw-SlbkkWpMQTlMNTL1dKWDg2dzEeawtHLueAj7IkCzUNYu4As2Q8e9BD2qqsQJAkyTcYQizVVJNm10BSa4jpkhAdOqH8ceW1_9YCQrfRNoxorpBFZNmXUdWkbvSHzTlpQ_uHTbvkoFJHAxtaP2A', '2016-06-22 06:50:33', '2016-06-22 06:50:33'),
(25, '1744442462500896', 'APA91bGKgmIE9CF_im1z-SBRIBpeaT3o6zeIFqCPn_FpNtush0gRN0SWQdqZIWdFXDakDqU2OcVfP_lVT-oQKkdrkFn4dvsn2p1ZA057NIib9bkKn-eWhdDLVhUENHbIBESWrQifxokc7zXAHV6c9lsYLYOf1Nc7Lg', '2016-06-22 07:05:39', '2016-06-22 07:05:39'),
(26, '1744442462500896', 'APA91bF-w_JUXxxJrtsCeji6xLz3ZnIec8QrRkhYynNCJY_ddZTjcRwKEg3Wp-R-sfbJH-0cHSR9Iukq4I5-frKMMjwfD-rXvrnJuEL4Sz-TtsfOUYyhiuw0QobdokT5vuyLGApO-xPbKC1hmaSvmj1be1Oy7AMoOw', '2016-06-28 09:41:35', '2016-06-28 09:41:35'),
(27, '1744442462500896', 'APA91bGmrMq9bA96pAyRJPYgflJBijfv9Na05vgM5hQsMJE4QAu8PRRu_Ufm5f8Dtq88su9AJDxlld3bjSLPlXzV5cWG8C4M0anMVcfNfYnkRhE3fqlH0Ft6NHtEt8HQdScM3XQlUO3b9iYFue6-xQCCxb0J7zAP1w', '2016-06-28 10:22:48', '2016-06-28 10:22:48'),
(28, '264791810537022', 'APA91bH6_pMsGHGpor7Ji3Qakqk1as6DT_2H1efY1lrjv3RlLoajJt4wdjLw4e6A2-Nx2AGKVlktziLvZnd9nzJw23K_ex4GRoywYWjftTZjgBWF7CC_HKBL5_JK5qJuhospUe03-PS7Uobj37aLD0D8FdRaTCeIBQ', '2016-06-28 16:13:51', '2016-06-28 16:13:51'),
(29, '1744442462500896', 'APA91bGRNH5oe4ZwS76khIHNNihoi8wHujGn_aZu2k0EXB1BqEXxNkFwReI9C6vpptxdLI9ESk6fg4qYkx7jnV3q73hKXDxLhpaZPiilDyYq5LBi_4eVEqPOIte6JI7KdKaeiLjgb-JfM6aceAtICD36fie6kG0MBQ', '2016-06-29 06:41:20', '2016-06-29 06:41:20'),
(30, '1091197310947094', 'APA91bFxVMRWyVCZRO6Xtrga3FxmXOjVr1Vhi1QJStmoiXHCajDrybBXnme--ZaLG_ZLy9eLegscua1H9GBgsdbYAn6XyB_Z_u9Cc9zMNSFB0J9LVVw02H_G9nqPUuM9YP73GiQ90mlUwTjBw31aQbukVO2I9U515A', '2016-06-29 08:20:32', '2016-06-29 08:20:32'),
(31, '490278004516867', 'APA91bHQAHD5taw9UP8V5fNKuga-X-L-Hy_MoQZP-xMvr2uEPbe1LxkNuzAiYUoqndyHgvzdSqF1hO1gmjQTlNu5AqWypRQHf4W0jKfkTNqOuCF9XPbuPfxJ5ZBcZ9wh04DQ_Uquh_hUThIXwOV-wW162r-UvMQ6bA', '2016-06-29 08:21:27', '2016-06-29 08:21:27'),
(32, '573274006173107', 'APA91bH6_pMsGHGpor7Ji3Qakqk1as6DT_2H1efY1lrjv3RlLoajJt4wdjLw4e6A2-Nx2AGKVlktziLvZnd9nzJw23K_ex4GRoywYWjftTZjgBWF7CC_HKBL5_JK5qJuhospUe03-PS7Uobj37aLD0D8FdRaTCeIBQ', '2016-06-30 07:27:29', '2016-06-30 07:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `ttLikes`
--

CREATE TABLE `ttLikes` (
  `id` int(11) NOT NULL,
  `like` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passive` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ttLikes`
--

INSERT INTO `ttLikes` (`id`, `like`, `passive`, `status`, `created_at`, `updated_at`) VALUES
(325, '490278004516867', '573274006173107', 1, '2016-06-29 09:05:21', '2016-06-29 09:05:21'),
(326, '490278004516867', '264791810537022', 1, '2016-06-29 09:05:43', '2016-06-29 09:05:43'),
(327, '490278004516867', '267814590231158', 1, '2016-06-29 09:06:03', '2016-06-29 09:06:03'),
(328, '490278004516867', '1744442462500896', 1, '2016-06-29 09:06:05', '2016-06-29 09:06:05'),
(329, '490278004516867', '289221224756538', 1, '2016-06-29 09:06:06', '2016-06-29 09:06:06'),
(330, '490278004516867', '1091197310947094', 1, '2016-06-29 09:06:07', '2016-06-29 09:06:07'),
(345, '1091197310947094', '490278004516867', 1, '2016-06-29 09:21:31', '2016-06-29 09:21:31'),
(344, '1091197310947094', '289221224756538', 1, '2016-06-29 09:21:30', '2016-06-29 09:21:30'),
(340, '1091197310947094', '573274006173107', 1, '2016-06-29 09:21:19', '2016-06-29 09:21:19'),
(341, '1091197310947094', '264791810537022', 1, '2016-06-29 09:21:24', '2016-06-29 09:21:24'),
(342, '1091197310947094', '267814590231158', 1, '2016-06-29 09:21:26', '2016-06-29 09:21:26'),
(343, '1091197310947094', '1744442462500896', 1, '2016-06-29 09:21:28', '2016-06-29 09:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `ttNotifications`
--

CREATE TABLE `ttNotifications` (
  `id` int(11) NOT NULL,
  `device` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ttNotifications`
--

INSERT INTO `ttNotifications` (`id`, `device`, `content`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Samsung White', 'Test', 1, '2016-05-09 07:13:42', '0000-00-00 00:00:00'),
(2, 'SamSung White', 'wewqewq', 0, '2016-05-09 09:01:00', '2016-05-09 09:01:00'),
(3, 'SamSung White', 'Nguyen Le Huynh', 0, '2016-05-09 09:01:45', '2016-05-09 09:01:45'),
(4, 'SamSung White', 'dsadas', 0, '2016-05-09 09:05:41', '2016-05-09 09:05:41'),
(5, 'SamSung White', 'dwewqe', 0, '2016-05-09 09:08:54', '2016-05-09 09:08:54'),
(6, 'SamSung White', 'qweeqwe', 0, '2016-05-09 09:09:15', '2016-05-09 09:09:15'),
(7, 'SamSung White', 'alo tui day', 0, '2016-06-02 10:21:35', '2016-06-02 10:21:35'),
(8, 'SamSung White', 'alo tui day', 0, '2016-06-02 10:25:08', '2016-06-02 10:25:08'),
(9, 'SamSung White', 'alo tui day', 0, '2016-06-02 10:38:43', '2016-06-02 10:38:43'),
(10, 'SamSung White', 'alo tui day', 0, '2016-06-02 10:43:55', '2016-06-02 10:43:55'),
(11, 'SamSung White', 'alo tui day', 0, '2016-06-02 10:57:14', '2016-06-02 10:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `ttUnlikes`
--

CREATE TABLE `ttUnlikes` (
  `id` int(11) NOT NULL,
  `unlike` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passive` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ttUsers`
--

CREATE TABLE `ttUsers` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `online` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `pwd` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ttUsers`
--

INSERT INTO `ttUsers` (`id`, `email`, `name`, `gender`, `online`, `created_at`, `updated_at`, `deleted`, `is_admin`, `pwd`) VALUES
('573274006173107', 'huynhcntt2012@yahoo.com.vn', 'Huynh NT', 'male', 1, '2016-06-21 19:47:38', '2016-06-21 19:47:38', 0, 0, ''),
('264791810537022', 'huynhcntt2009@yahoo.com', 'Huynh Huynh', 'male', 0, '2016-06-30 07:25:58', '2016-06-30 07:25:58', 0, 0, ''),
('267814590231158', 'huynhcntt2009@gmail.com', 'Huynh Le', 'male', 1, '2016-06-22 06:17:25', '2016-06-21 19:29:50', 0, 0, ''),
('1744442462500896', 'vinh.thien0301@gmail.com', 'Vinh Thien', 'male', 1, '2016-06-22 07:05:40', '2016-06-22 07:05:40', 0, 0, ''),
('289221224756538', '', 'Le Huynh', 'male', 0, '2016-06-28 16:11:24', '2016-06-28 16:11:24', 0, 0, ''),
('1091197310947094', 'phatnguyen0987654321@icloud.com', 'Phát Nguyễn', 'male', 1, '2016-06-28 10:09:56', '2016-06-28 10:09:56', 0, 0, ''),
('490278004516867', 'phatnguyen0987654321@gmail.com', 'ﱞﱞﱞ', 'male', 1, '2016-06-29 06:34:29', '2016-06-29 06:34:29', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ttUserStatus`
--

CREATE TABLE `ttUserStatus` (
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `resource` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `online` tinyint(4) NOT NULL,
  `presence` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastIpAddress` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `lastLoginDate` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `lastLogoffDate` char(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ofExtComponentConf`
--
ALTER TABLE `ofExtComponentConf`
  ADD PRIMARY KEY (`subdomain`);

--
-- Indexes for table `ofGroup`
--
ALTER TABLE `ofGroup`
  ADD PRIMARY KEY (`groupName`);

--
-- Indexes for table `ofGroupProp`
--
ALTER TABLE `ofGroupProp`
  ADD PRIMARY KEY (`groupName`,`name`);

--
-- Indexes for table `ofGroupUser`
--
ALTER TABLE `ofGroupUser`
  ADD PRIMARY KEY (`groupName`,`username`,`administrator`);

--
-- Indexes for table `ofID`
--
ALTER TABLE `ofID`
  ADD PRIMARY KEY (`idType`);

--
-- Indexes for table `ofMucAffiliation`
--
ALTER TABLE `ofMucAffiliation`
  ADD PRIMARY KEY (`roomID`,`jid`(70));

--
-- Indexes for table `ofMucConversationLog`
--
ALTER TABLE `ofMucConversationLog`
  ADD KEY `ofMucConversationLog_time_idx` (`logTime`);

--
-- Indexes for table `ofMucMember`
--
ALTER TABLE `ofMucMember`
  ADD PRIMARY KEY (`roomID`,`jid`(70));

--
-- Indexes for table `ofMucRoom`
--
ALTER TABLE `ofMucRoom`
  ADD PRIMARY KEY (`serviceID`,`name`),
  ADD KEY `ofMucRoom_roomid_idx` (`roomID`),
  ADD KEY `ofMucRoom_serviceid_idx` (`serviceID`);

--
-- Indexes for table `ofMucRoomProp`
--
ALTER TABLE `ofMucRoomProp`
  ADD PRIMARY KEY (`roomID`,`name`);

--
-- Indexes for table `ofMucService`
--
ALTER TABLE `ofMucService`
  ADD PRIMARY KEY (`subdomain`),
  ADD KEY `ofMucService_serviceid_idx` (`serviceID`);

--
-- Indexes for table `ofMucServiceProp`
--
ALTER TABLE `ofMucServiceProp`
  ADD PRIMARY KEY (`serviceID`,`name`);

--
-- Indexes for table `ofOffline`
--
ALTER TABLE `ofOffline`
  ADD PRIMARY KEY (`username`,`messageID`);

--
-- Indexes for table `ofPresence`
--
ALTER TABLE `ofPresence`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ofPrivacyList`
--
ALTER TABLE `ofPrivacyList`
  ADD PRIMARY KEY (`username`,`name`),
  ADD KEY `ofPrivacyList_default_idx` (`username`,`isDefault`);

--
-- Indexes for table `ofPrivate`
--
ALTER TABLE `ofPrivate`
  ADD PRIMARY KEY (`username`,`name`,`namespace`(100));

--
-- Indexes for table `ofProperty`
--
ALTER TABLE `ofProperty`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ofPubsubAffiliation`
--
ALTER TABLE `ofPubsubAffiliation`
  ADD PRIMARY KEY (`serviceID`,`nodeID`,`jid`(70));

--
-- Indexes for table `ofPubsubDefaultConf`
--
ALTER TABLE `ofPubsubDefaultConf`
  ADD PRIMARY KEY (`serviceID`,`leaf`);

--
-- Indexes for table `ofPubsubItem`
--
ALTER TABLE `ofPubsubItem`
  ADD PRIMARY KEY (`serviceID`,`nodeID`,`id`);

--
-- Indexes for table `ofPubsubNode`
--
ALTER TABLE `ofPubsubNode`
  ADD PRIMARY KEY (`serviceID`,`nodeID`);

--
-- Indexes for table `ofPubsubNodeGroups`
--
ALTER TABLE `ofPubsubNodeGroups`
  ADD KEY `ofPubsubNodeGroups_idx` (`serviceID`,`nodeID`);

--
-- Indexes for table `ofPubsubNodeJIDs`
--
ALTER TABLE `ofPubsubNodeJIDs`
  ADD PRIMARY KEY (`serviceID`,`nodeID`,`jid`(70));

--
-- Indexes for table `ofPubsubSubscription`
--
ALTER TABLE `ofPubsubSubscription`
  ADD PRIMARY KEY (`serviceID`,`nodeID`,`id`);

--
-- Indexes for table `ofRemoteServerConf`
--
ALTER TABLE `ofRemoteServerConf`
  ADD PRIMARY KEY (`xmppDomain`);

--
-- Indexes for table `ofRoster`
--
ALTER TABLE `ofRoster`
  ADD PRIMARY KEY (`rosterID`),
  ADD KEY `ofRoster_unameid_idx` (`username`),
  ADD KEY `ofRoster_jid_idx` (`jid`(255));

--
-- Indexes for table `ofRosterGroups`
--
ALTER TABLE `ofRosterGroups`
  ADD PRIMARY KEY (`rosterID`,`rank`),
  ADD KEY `ofRosterGroup_rosterid_idx` (`rosterID`);

--
-- Indexes for table `ofSASLAuthorized`
--
ALTER TABLE `ofSASLAuthorized`
  ADD PRIMARY KEY (`username`,`principal`(200));

--
-- Indexes for table `ofSecurityAuditLog`
--
ALTER TABLE `ofSecurityAuditLog`
  ADD PRIMARY KEY (`msgID`),
  ADD KEY `ofSecurityAuditLog_tstamp_idx` (`entryStamp`),
  ADD KEY `ofSecurityAuditLog_uname_idx` (`username`);

--
-- Indexes for table `ofUser`
--
ALTER TABLE `ofUser`
  ADD PRIMARY KEY (`username`),
  ADD KEY `ofUser_cDate_idx` (`creationDate`);

--
-- Indexes for table `ofUserFlag`
--
ALTER TABLE `ofUserFlag`
  ADD PRIMARY KEY (`username`,`name`),
  ADD KEY `ofUserFlag_sTime_idx` (`startTime`),
  ADD KEY `ofUserFlag_eTime_idx` (`endTime`);

--
-- Indexes for table `ofUserProp`
--
ALTER TABLE `ofUserProp`
  ADD PRIMARY KEY (`username`,`name`);

--
-- Indexes for table `ofVCard`
--
ALTER TABLE `ofVCard`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ofVersion`
--
ALTER TABLE `ofVersion`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ttChats`
--
ALTER TABLE `ttChats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttDevices`
--
ALTER TABLE `ttDevices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttLikes`
--
ALTER TABLE `ttLikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttNotifications`
--
ALTER TABLE `ttNotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttUnlikes`
--
ALTER TABLE `ttUnlikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttUsers`
--
ALTER TABLE `ttUsers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttUserStatus`
--
ALTER TABLE `ttUserStatus`
  ADD PRIMARY KEY (`username`,`resource`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ttChats`
--
ALTER TABLE `ttChats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `ttDevices`
--
ALTER TABLE `ttDevices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `ttLikes`
--
ALTER TABLE `ttLikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;
--
-- AUTO_INCREMENT for table `ttNotifications`
--
ALTER TABLE `ttNotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ttUnlikes`
--
ALTER TABLE `ttUnlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
