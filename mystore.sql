-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2023 at 03:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Flower'),
(2, 'seeds'),
(3, 'plant');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(1, 'Hibiscus', 'Hibiscus is a flowering plant that belongs to the family Malvaceae, also known as mallow family. The Hibiscus flowers are large and showy, and the genus grows into herbs, shrubs or small trees.', 'flower,hib', 1, 'hibi3.webp', 'hibi2.webp', 'hibi1.jpg', '199', '2023-09-07 12:28:06', 'true'),
(2, 'Red Rose', 'A red rose is the symbol of eternal love and passion. The meaning of red roses can stand for true love, courage, respect, or even congratulations.', 'flower,ro', 1, 'redrose.webp', 'redrose1.jpg', 'redrose2.webp', '120', '2023-09-07 12:29:13', 'true'),
(3, 'Dahlia', 'Dahlias are tuberous perennials, and most have simple leaves that are segmented and toothed or cut. The compound flowers may be white, yellow, red, or purple in colour.', 'flower,da', 1, 'd4.webp', 'd2.jpg', 'd3.jpg', '100', '2023-09-07 12:30:34', 'true'),
(4, 'Money Plant', 'Money plant is an attractive indoor houseplant with heart-shaped leaves and variegated patterns. Known for its easy care and auspicious symbolism, it is a popular choice for homes and offices.', 'plant,mo', 3, 'money1.jpg', 'money2.jpg', 'money.webp', '150', '2023-09-07 12:33:51', 'true'),
(5, 'Fox Tail Palm', 'The foxtail palm is a striking tropical palm tree, characterized by its dense cluster of feathery, arching fronds that resemble a fox tail. This palm is known for its elegant appearance and is often used in landscaping to create a dramatic focal point.', 'plant,fo', 3, 'fo1.webp', 'fo2.jpg', 'fo3.webp', '600', '2023-09-07 12:35:50', 'true'),
(6, 'Spider Plant', 'The spider plant (Chlorophytum comosum) is a popular indoor houseplant admired for its long, arching green and white-striped leaves. It is easy to care for and known for its air-purifying qualities, making it a favorite choice for homes and offices.', 'plant,sp', 3, 'spi1.jpg', 'spi2.webp', 'spi3.jpg', '120', '2023-09-07 12:37:38', 'true'),
(7, 'Ficus Bonsai', 'The ficus bonsai is a diminutive version of the ficus tree, characterized by its intricately pruned branches and miniature size. Its elegant appearance and adaptability make it a popular choice for bonsai enthusiasts and indoor plant lovers.', 'plant,fi', 3, 'fi3.jpg', 'fi2.jpg', 'fi1.jpg', '199', '2023-09-07 12:39:23', 'true'),
(8, 'Cycas Plant', 'The cycas plant, also known as the sago palm, is a prehistoric-looking, slow-growing, and palm-like cycad. With its feather-like, glossy fronds and sturdy trunk, it is a distinctive and durable choice for both indoor and outdoor landscaping.', 'plant,cy', 3, 'cy1.webp', 'cy2.webp', 'cy3.webp', '299', '2023-09-07 12:41:24', 'true'),
(9, 'Costus Igneus(Insulin Plant)', 'Costus igneus, commonly known as the (insulin plant) is a herbaceous perennial with bright green, lance-shaped leaves and striking red-orange spiral-shaped inflorescences. It is prized for its potential anti-diabetic properties and is often grown for its ', 'plant,in', 3, 'in1.jpg', 'in2.jpg', 'in3.jpg', '249', '2023-09-07 12:44:08', 'true'),
(10, 'Citronella Plant', 'The citronella plant, scientifically known as Pelargonium citrosum, is a fragrant herb often grown for its lemony scent, which is believed to repel mosquitoes. It features deeply lobed, green leaves and small pink or lavender flowers, making it a popular ', 'plant,citro', 3, 'ctr3.jpg', 'ctr2.jpg', 'ctr1.jpg', '299', '2023-09-07 12:46:15', 'true'),
(11, 'Lemon Grass Plant', 'Lemongrass (Cymbopogon citratus) is a perennial herb with long, slender, green stalks and fragrant, narrow leaves. Its distinct lemony flavor and aroma make it a popular ingredient in many culinary dishes, teas, and herbal remedies.', 'plant,le', 3, 'lg1.jpg', 'lg2.jpg', 'lg3.webp', '160', '2023-09-07 12:49:00', 'true'),
(12, 'Laxmi Tulsi', 'Laxmi Tulsi, also known as Holy Basil (Ocimum sanctum), is a sacred herb in Hindu culture, valued for its aromatic leaves with a distinct peppery and clove-like fragrance. Its revered for its spiritual significance and medicinal properties, believed to pr', 'plant,la', 3, 'lt1.jpg', 'lt2.png', 'lt3.jpg', '150', '2023-09-07 12:51:03', 'true'),
(13, 'Syngonium Pink', 'Syngonium Pink is a popular indoor plant with heart-shaped leaves that feature striking shades of pink, green, and white. Its attractive foliage and low-maintenance nature make it a sought-after choice for adding a touch of color to indoor spaces.', 'plant,syn', 3, 'sy1.jpg', 'sy2.jpg', 'sy3.jpg', '199', '2023-09-07 12:52:38', 'true'),
(14, 'Geranium White', 'White geraniums are charming flowering plants known for their clusters of pure white blooms and distinctive five-petal flowers. They add a classic and elegant touch to gardens and containers, often thriving in full sun or partial shade.', 'flower,ger', 1, 'gw1.jpg', 'gw3.webp', 'gw2.jpg', '200', '2023-09-07 12:55:16', 'true'),
(15, 'Pink Rose', 'Pink roses are exquisite flowers characterized by their soft, romantic pink hues and layered, fragrant petals. They symbolize love, gratitude, and admiration, making them a timeless choice for expressing heartfelt emotions.', 'flower,pi', 1, 'pi1.webp', 'pi2.webp', 'pi3.webp', '130', '2023-09-07 12:58:03', 'true'),
(16, 'White Rose', 'White roses, with their pure and pristine petals, symbolize purity, innocence, and new beginnings. They exude timeless elegance and are a popular choice for weddings and other special occasions.', 'flower,wh', 1, 'wr1.webp', 'wr2.webp', 'wr3.jpg', '160', '2023-09-07 12:59:10', 'true'),
(17, 'Orange Hibiscus', 'Orange hibiscus, with its vibrant and eye-catching petals, boasts large, trumpet-shaped flowers that bring a tropical feel to gardens and landscapes. This variety of hibiscus adds a burst of warm, fiery color to outdoor spaces.', 'flower,or', 1, 'hi3.jpg', 'hi2.webp', 'hi1.jpg', '120', '2023-09-07 13:01:14', 'true'),
(18, 'Mogra Jasmine', 'Mogra Jasmine, also known as Arabian Jasmine (Jasminum sambac), is a fragrant flowering plant cherished for its small, white, and intensely fragrant blossoms. Its sweet and exotic scent makes it a popular choice for perfumes, garlands, and decorative gard', 'flower,mo', 1, 'mo1.jpg', 'mo2.jpg', 'mo3.png', '250', '2023-09-07 13:02:14', 'true'),
(19, 'White Lilly', 'White lilies, with their pristine and graceful petals, symbolize purity, virtue, and renewal. These elegant flowers are often used in bouquets and floral arrangements to convey a sense of elegance and reverence.', 'flower,wh', 1, 'whitelilly1.jpg', 'white2.webp', 'white3.webp', '199', '2023-09-07 13:05:09', 'true'),
(20, 'Plumbago', 'Plumbago is a versatile, fast-growing shrub celebrated for its clusters of phlox-like, sky-blue flowers and lush green foliage. This plant is a favorite choice for adding vibrant, long-lasting color to gardens and can be trained as a vine or grown as a bu', 'flower,pl', 1, 'p1.jpg', 'p4.webp', 'p2.jpg', '250', '2023-09-07 13:06:09', 'true'),
(21, 'Anthurium Mini Red', 'Anthurium Mini Red is a compact and ornamental houseplant featuring glossy, heart-shaped leaves and distinctive, vibrant red, waxy spathes. Its unique appearance and long-lasting flowers make it a popular choice for indoor décor, adding a touch of tropica', 'flower,an', 1, 'ar3.webp', 'ar2.jpg', 'ar1.webp', '600', '2023-09-07 13:07:08', 'true'),
(22, 'Cosmos Flower', 'Cosmos is an annual flowering plant known for its delicate, daisy-like flowers in a variety of colors, such as pink, white, and orange, atop fern-like foliage. These easy-to-grow flowers attract pollinators and add a charming, cottage garden feel to lands', 'flower,soc', 1, 'cs2.webp', 'cs1.jpg', 'cs3.jpg', '300', '2023-09-07 13:08:15', 'true'),
(23, 'Tecoma Stans', 'Tecoma stans, commonly known as Yellow Bells or Yellow Trumpetbush, is a vibrant, drought-tolerant shrub adorned with clusters of bright yellow, trumpet-shaped flowers. Its striking appearance and low-maintenance nature make it a popular choice for adding', 'flower,st', 1, 'te1.png', 'te3.png', 'te2.webp', '249', '2023-09-07 13:09:15', 'true'),
(24, 'Christmas Cactus', 'The Christmas cactus (Schlumbergera) is a popular holiday houseplant known for its pendulous stems, segmented leaves, and vibrant tubular flowers that bloom in various colors. Its striking appearance and winter flowering make it a festive and cherished ad', 'flower,cr', 1, 'cr1.jpg', 'cr3.webp', 'cr2.avif', '999', '2023-09-07 13:10:46', 'true'),
(25, 'Periwinkle', 'Periwinkle, also known as Vinca, is a low-growing, trailing evergreen plant adorned with charming, five-petaled flowers in shades of blue, purple, or white. Its prized for its resilience and ability to thrive in various garden settings, adding a splash of', 'flower,pe', 1, 'pe3.jpg', 'pe1.webp', 'pe2.jpg', '450', '2023-09-07 13:15:15', 'true'),
(26, 'Sunflower seeds', 'Sunflower seeds are flat, oval seeds harvested from the center of sunflower heads, renowned for their nutty flavor and high nutritional value. They are a popular snack and a source of healthy fats, protein, and vitamin E.', 'seeds,s', 2, 'sf1.jpg', 'sf3.jpg', 'sf2.jpg', '150', '2023-09-07 13:18:34', 'true'),
(27, 'Morning Glory', 'Morning glory seeds are small, flat seeds from the morning glory plant, celebrated for their charming, trumpet-shaped flowers and fast-growing vines. They come in a range of colors and are known for their ability to quickly cover trellises, fences, and ot', 'seeds,m', 2, 'mg3.jpg', 'mg1.webp', 'mg2.jpg', '99', '2023-09-07 13:21:21', 'true'),
(28, 'Zinnia seeds', 'Zinnia seeds are small, flat seeds derived from the zinnia flower, known for their vibrant and diverse range of colors and shapes. These seeds are easy to plant and produce robust, long-lasting blooms, making zinnias a favorite choice for gardeners seekin', 'seeds,zi', 2, 'zi.jpg', 'z2.jpg', 'z3.jpg', '49', '2023-09-07 13:22:21', 'true'),
(29, 'Marigold Seeds', 'Marigold seeds are small and oblong, originating from the marigold flower known for its vibrant, daisy-like blooms in shades of yellow and orange. These easy-to-grow seeds are popular for adding cheerful color to gardens and for their pest-repelling prope', 'seeds,mari', 2, 'mr3.jpg', 'mr1.webp', 'mr2.jpg', '199', '2023-09-07 13:24:32', 'true'),
(30, 'Cosmos Seeds', 'Cosmos seeds are small, dark, and elongated, obtained from the cosmos flower, celebrated for its fern-like foliage and daisy-like blooms in various shades, including pink, white, and orange. These seeds are favored for their ease of cultivation and abilit', 'seeds,co', 2, 'cso1.webp', 'cso3.webp', 'cso2.jpg', '99', '2023-09-07 13:26:56', 'true'),
(31, 'Calendula Seeds', 'Calendula seeds are small, curved seeds from the calendula plant, featuring bright, daisy-like flowers in shades of orange and yellow. These seeds are known for their medicinal properties and are used in herbal remedies, in addition to being cultivated fo', 'seeds,cd', 2, 'cd1.webp', 'cd2.jpg', 'cd3.jpg', '69', '2023-09-07 13:28:29', 'true'),
(32, 'Petunia Seeds', 'Petunia seeds are tiny, round seeds harvested from the vibrant and trumpet-shaped flowers of the petunia plant, available in various colors. These seeds are easy to sow and cultivate, making petunias a popular choice for adding colorful blooms to gardens ', 'seeds,pe', 2, 'pt1.jpg', 'pt2.jpg', 'pt3.webp', '99', '2023-09-07 13:31:44', 'true'),
(33, 'Green Pumpkin seeds', 'Green pumpkin seeds are the edible, oval seeds extracted from unripe pumpkins, offering a nutty flavor and nutritional benefits. They can be roasted and seasoned as a tasty snack or used in various culinary dishes, providing a source of healthy fats, prot', 'seeds,pu', 2, 'pu1.jpeg', 'pu5.webp', 'pu3.webp', '30', '2023-09-07 13:35:47', 'true'),
(34, 'Hibiscus Seeds', 'Hibiscus seeds are small, round seeds obtained from the hibiscus plant, which is famous for its large, showy, and colorful blossoms. These seeds can be grown into stunning tropical shrubs or trees, and they come in various varieties, each with its unique ', 'seeds,hi', 2, 'hib3.jpg', 'hib2.webp', 'hib1.avif', '99', '2023-09-07 13:38:55', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(1, 'Anwesh', 'uanweshg@gmail.com', '$2y$10$ihv4kt4x0lY4zR/wpQTeM.EDvNuxrb/n49y4Kf5MFr.K.RSYJXupK', 'john.jpg', '::1', 'hyd', '9014380611');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
