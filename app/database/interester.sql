-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 13, 2020 at 03:32 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interester`
--

-- --------------------------------------------------------

--
-- Table structure for table `langs`
--

CREATE TABLE `langs` (
  `id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `logo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `langs`
--

INSERT INTO `langs` (`id`, `name`, `logo`) VALUES
(1, 'html', '<svg viewBox=\"0 0 128 128\">\r\n                            <path fill=\"#E44D26\"\r\n                              d=\"M19.037 113.876l-10.005-112.215h109.936l-10.016 112.198-45.019 12.48z\"></path>\r\n                            <path fill=\"#F16529\" d=\"M64 116.8l36.378-10.086 8.559-95.878h-44.937z\"></path>\r\n                            <path fill=\"#EBEBEB\"\r\n                              d=\"M64 52.455h-18.212l-1.258-14.094h19.47v-13.762h-34.511l.33 3.692 3.382 37.927h30.799zM64 88.198l-.061.017-15.327-4.14-.979-10.975h-13.817l1.928 21.609 28.193 7.826.063-.017z\">\r\n                            </path>\r\n                            <path fill=\"#fff\"\r\n                              d=\"M63.952 52.455v13.763h16.947l-1.597 17.849-15.35 4.143v14.319l28.215-7.82.207-2.325 3.234-36.233.335-3.696h-3.708zM63.952 24.599v13.762h33.244l.276-3.092.628-6.978.329-3.692z\">\r\n                            </path>\r\n                          </svg>'),
(2, 'java', '<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#0074BD\" d=\"M47.617 98.12s-4.767 2.774 3.397 3.71c9.892 1.13 14.947.968 25.845-1.092 0 0 2.871 1.795 6.873 3.351-24.439 10.47-55.308-.607-36.115-5.969zM44.629 84.455s-5.348 3.959 2.823 4.805c10.567 1.091 18.91 1.18 33.354-1.6 0 0 1.993 2.025 5.132 3.131-29.542 8.64-62.446.68-41.309-6.336z\"></path><path fill=\"#EA2D2E\" d=\"M69.802 61.271c6.025 6.935-1.58 13.17-1.58 13.17s15.289-7.891 8.269-17.777c-6.559-9.215-11.587-13.792 15.635-29.58 0 .001-42.731 10.67-22.324 34.187z\"></path><path fill=\"#0074BD\" d=\"M102.123 108.229s3.529 2.91-3.888 5.159c-14.102 4.272-58.706 5.56-71.094.171-4.451-1.938 3.899-4.625 6.526-5.192 2.739-.593 4.303-.485 4.303-.485-4.953-3.487-32.013 6.85-13.743 9.815 49.821 8.076 90.817-3.637 77.896-9.468zM49.912 70.294s-22.686 5.389-8.033 7.348c6.188.828 18.518.638 30.011-.326 9.39-.789 18.813-2.474 18.813-2.474s-3.308 1.419-5.704 3.053c-23.042 6.061-67.544 3.238-54.731-2.958 10.832-5.239 19.644-4.643 19.644-4.643zM90.609 93.041c23.421-12.167 12.591-23.86 5.032-22.285-1.848.385-2.677.72-2.677.72s.688-1.079 2-1.543c14.953-5.255 26.451 15.503-4.823 23.725 0-.002.359-.327.468-.617z\"></path><path fill=\"#EA2D2E\" d=\"M76.491 1.587s12.968 12.976-12.303 32.923c-20.266 16.006-4.621 25.13-.007 35.559-11.831-10.673-20.509-20.07-14.688-28.815 8.548-12.834 32.229-19.059 26.998-39.667z\"></path><path fill=\"#0074BD\" d=\"M52.214 126.021c22.476 1.437 57-.8 57.817-11.436 0 0-1.571 4.032-18.577 7.231-19.186 3.612-42.854 3.191-56.887.874 0 .001 2.875 2.381 17.647 3.331z\"></path>\r\n</svg>'),
(3, 'php', '<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#6181B6\" d=\"M64 33.039c-33.74 0-61.094 13.862-61.094 30.961s27.354 30.961 61.094 30.961 61.094-13.862 61.094-30.961-27.354-30.961-61.094-30.961zm-15.897 36.993c-1.458 1.364-3.077 1.927-4.86 2.507-1.783.581-4.052.461-6.811.461h-6.253l-1.733 10h-7.301l6.515-34h14.04c4.224 0 7.305 1.215 9.242 3.432 1.937 2.217 2.519 5.364 1.747 9.337-.319 1.637-.856 3.159-1.614 4.515-.759 1.357-1.75 2.624-2.972 3.748zm21.311 2.968l2.881-14.42c.328-1.688.208-2.942-.361-3.555-.57-.614-1.782-1.025-3.635-1.025h-5.79l-3.731 19h-7.244l6.515-33h7.244l-1.732 9h6.453c4.061 0 6.861.815 8.402 2.231s2.003 3.356 1.387 6.528l-3.031 15.241h-7.358zm40.259-11.178c-.318 1.637-.856 3.133-1.613 4.488-.758 1.357-1.748 2.598-2.971 3.722-1.458 1.364-3.078 1.927-4.86 2.507-1.782.581-4.053.461-6.812.461h-6.253l-1.732 10h-7.301l6.514-34h14.041c4.224 0 7.305 1.215 9.241 3.432 1.935 2.217 2.518 5.418 1.746 9.39zM95.919 54h-5.001l-2.727 14h4.442c2.942 0 5.136-.29 6.576-1.4 1.442-1.108 2.413-2.828 2.918-5.421.484-2.491.264-4.434-.66-5.458-.925-1.024-2.774-1.721-5.548-1.721zM38.934 54h-5.002l-2.727 14h4.441c2.943 0 5.136-.29 6.577-1.4 1.441-1.108 2.413-2.828 2.917-5.421.484-2.491.264-4.434-.66-5.458s-2.772-1.721-5.546-1.721z\"></path>\r\n</svg>'),
(4, 'python', '<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#FFD845\" d=\"M49.33 62h29.159c8.117 0 14.511-6.868 14.511-15.019v-27.798c0-7.912-6.632-13.856-14.555-15.176-5.014-.835-10.195-1.215-15.187-1.191-4.99.023-9.612.448-13.805 1.191-12.355 2.181-14.453 6.751-14.453 15.176v10.817h29v4h-40.224000000000004c-8.484 0-15.914 5.108-18.237 14.811-2.681 11.12-2.8 17.919 0 29.53 2.075 8.642 7.03 14.659 15.515 14.659h9.946v-13.048c0-9.637 8.428-17.952 18.33-17.952zm-1.838-39.11c-3.026 0-5.478-2.479-5.478-5.545 0-3.079 2.451-5.581 5.478-5.581 3.015 0 5.479 2.502 5.479 5.581-.001 3.066-2.465 5.545-5.479 5.545zM122.281 48.811c-2.098-8.448-6.103-14.811-14.599-14.811h-10.682v12.981c0 10.05-8.794 18.019-18.511 18.019h-29.159c-7.988 0-14.33 7.326-14.33 15.326v27.8c0 7.91 6.745 12.564 14.462 14.834 9.242 2.717 17.994 3.208 29.051 0 7.349-2.129 14.487-6.411 14.487-14.834v-11.126h-29v-4h43.682c8.484 0 11.647-5.776 14.599-14.66 3.047-9.145 2.916-17.799 0-29.529zm-41.955 55.606c3.027 0 5.479 2.479 5.479 5.547 0 3.076-2.451 5.579-5.479 5.579-3.015 0-5.478-2.502-5.478-5.579 0-3.068 2.463-5.547 5.478-5.547z\"></path>\r\n</svg>'),
(5, 'angular', '<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#C4473A\" d=\"M52.864 64h23.28l-12.375-25.877zM63.81 1.026l-59.257 20.854 9.363 77.637 49.957 27.457 50.214-27.828 9.36-77.635-59.637-20.485zm-15.766 73.974l-7.265 18.176-13.581.056 36.608-81.079-.07-.153h-.064l.001-.133.063.133h.14100000000000001l.123-.274v.274h-.124l-.069.153 38.189 81.417-13.074-.287-8.042-18.58-17.173.082\"></path>\r\n</svg>'),
(6, 'CSS', '<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#1572B6\" d=\"M18.814 114.123l-10.054-112.771h110.48l-10.064 112.754-45.243 12.543-45.119-12.526z\"></path><path fill=\"#33A9DC\" d=\"M64.001 117.062l36.559-10.136 8.601-96.354h-45.16v106.49z\"></path><path fill=\"#fff\" d=\"M64.001 51.429h18.302l1.264-14.163h-19.566v-13.831h34.681999999999995l-.332 3.711-3.4 38.114h-30.95v-13.831z\"></path><path fill=\"#EBEBEB\" d=\"M64.083 87.349l-.061.018-15.403-4.159-.985-11.031h-13.882l1.937 21.717 28.331 7.863.063-.018v-14.39z\"></path><path fill=\"#fff\" d=\"M81.127 64.675l-1.666 18.522-15.426 4.164v14.39l28.354-7.858.208-2.337 2.406-26.881h-13.876z\"></path><path fill=\"#EBEBEB\" d=\"M64.048 23.435v13.831000000000001h-33.407999999999994l-.277-3.108-.63-7.012-.331-3.711h34.646zM64.001 51.431v13.831000000000001h-15.209l-.277-3.108-.631-7.012-.33-3.711h16.447z\"></path>\r\n</svg>'),
(7, '.NET', '<svg viewBox=\"0 0 128 128\">\r\n<path d=\"M30.762 77.907h-1.74v-9.963c0-.787.051-1.745.144-2.875h-.039c-.164.661-.313 1.14-.444 1.436l-5.061 11.402h-.848l-5.071-11.319c-.142-.316-.292-.825-.443-1.519h-.038c.054.594.084 1.558.084 2.895v9.943h-1.679v-14.837h2.296l4.552 10.347c.343.779.565 1.372.673 1.776h.071c.298-.811.534-1.42.711-1.82l4.651-10.303h2.179v14.837h.002z\"></path><path d=\"M36.118 77.907h-1.692v-10.595h1.692v10.595zm.292-14.394c0 .313-.11.573-.328.787-.213.214-.479.322-.788.322-.303 0-.566-.104-.782-.311-.216-.208-.322-.473-.322-.799 0-.306.106-.567.322-.779.216-.212.479-.314.782-.314.31 0 .575.103.788.314.218.213.328.474.328.78\"></path><path d=\"M46.691 77.417c-.812.499-1.781.746-2.902.746-1.52 0-2.742-.504-3.676-1.511-.908-.978-1.364-2.24-1.364-3.786 0-1.736.496-3.141 1.497-4.209.996-1.069 2.334-1.603 4.018-1.603.92 0 1.737.18 2.452.538v1.741c-.791-.555-1.627-.831-2.525-.831-1.079 0-1.957.377-2.637 1.128-.709.77-1.068 1.798-1.068 3.082 0 1.232.328 2.209.979 2.929.653.717 1.523 1.076 2.621 1.076.926 0 1.794-.305 2.606-.911v1.611h-.001z\"></path><path d=\"M54.786 69.031c-.299-.23-.729-.341-1.296-.341-.689 0-1.269.308-1.737.93-.532.694-.796 1.656-.796 2.886v5.401h-1.697v-10.596h1.697v2.185h.041c.249-.773.634-1.368 1.148-1.79.48-.385 1.024-.58 1.623-.58.452 0 .787.049 1.016.145v1.759l.001.001z\"></path><path d=\"M64.237 72.628c0-1.356-.306-2.393-.918-3.103-.594-.683-1.425-1.024-2.495-1.024-1.054 0-1.9.345-2.533 1.036-.668.739-1.002 1.781-1.002 3.134 0 1.268.317 2.263.96 2.973.638.714 1.497 1.072 2.575 1.072 1.115 0 1.969-.364 2.554-1.085.573-.708.859-1.707.859-3.003m1.739-.059c0 1.688-.477 3.045-1.427 4.061-.954 1.021-2.237 1.531-3.852 1.531-1.59 0-2.856-.51-3.784-1.531-.91-.983-1.366-2.283-1.366-3.898 0-1.844.516-3.264 1.552-4.273.958-.936 2.24-1.407 3.846-1.407 1.58 0 2.814.493 3.704 1.469.882.98 1.327 2.33 1.327 4.048\"></path><path d=\"M74.387 75.073c0 .868-.323 1.585-.973 2.159-.709.62-1.683.93-2.908.93-1.002 0-1.881-.21-2.628-.638v-1.824c.83.675 1.748 1.015 2.754 1.015 1.343 0 2.016-.495 2.016-1.48 0-.414-.147-.757-.445-1.023-.298-.271-.878-.594-1.739-.974-.887-.388-1.52-.787-1.893-1.2-.448-.491-.673-1.129-.673-1.915 0-.879.352-1.611 1.046-2.194.697-.585 1.592-.877 2.691-.877.842 0 1.596.164 2.266.497v1.707c-.699-.504-1.498-.755-2.405-.755-.562 0-1.013.14-1.349.412-.34.279-.51.634-.51 1.068 0 .469.142.834.425 1.096.252.241.786.536 1.591.879.904.379 1.558.772 1.956 1.174.517.508.778 1.156.778 1.943\"></path><path d=\"M84.753 72.628c0-1.356-.307-2.393-.92-3.103-.594-.683-1.426-1.024-2.494-1.024-1.055 0-1.9.345-2.536 1.036-.667.739-1 1.781-1 3.134 0 1.268.319 2.263.954 2.973.646.714 1.506 1.072 2.582 1.072 1.117 0 1.968-.364 2.554-1.085.572-.708.86-1.707.86-3.003m1.742-.059c0 1.688-.481 3.045-1.433 4.061-.95 1.021-2.233 1.531-3.848 1.531-1.592 0-2.857-.51-3.786-1.531-.909-.983-1.366-2.283-1.366-3.898 0-1.844.521-3.264 1.551-4.273.958-.936 2.241-1.407 3.849-1.407 1.581 0 2.813.493 3.7 1.469.883.98 1.333 2.33 1.333 4.048\"></path><path d=\"M93.968 63.711c-.333-.184-.704-.278-1.126-.278-1.188 0-1.777.747-1.777 2.245v1.633h2.483v1.438h-2.483v9.158h-1.698v-9.158h-1.802v-1.438h1.802v-1.717c0-1.166.357-2.081 1.084-2.74.622-.573 1.383-.857 2.289-.857.524 0 .932.063 1.228.184v1.53z\"></path><path d=\"M100.662 77.801c-.4.229-.934.343-1.593.343-1.85 0-2.774-1.042-2.774-3.128v-6.266h-1.818v-1.439h1.818v-2.585c.542-.171 1.105-.357 1.7-.55v3.135h2.667v1.439h-2.667v5.979c0 .71.116 1.218.359 1.513.245.305.646.454 1.211.454.423 0 .788-.113 1.097-.342v1.447z\"></path><path d=\"M8.978 119.262c0 .831-.295 1.548-.895 2.155-.596.604-1.32.909-2.17.909-.831 0-1.538-.305-2.116-.909-.58-.606-.868-1.324-.868-2.155 0-.854.289-1.575.868-2.171.579-.599 1.286-.896 2.116-.896.85 0 1.574.301 2.17.907.6.607.895 1.327.895 2.16\"></path><path d=\"M46.953 121.702h-5.532l-20.079-31.008c-.469-.746-.874-1.557-1.217-2.442h-.165c.144.831.216 2.613.216 5.343v28.107h-4.559v-38.903h5.918l19.478 30.52c.775 1.211 1.306 2.079 1.575 2.601h.108c-.18-1.119-.274-3.027-.274-5.72v-27.4h4.532v38.902h-.001z\"></path><path d=\"M76.186 121.702h-20.619v-38.903h19.724v4.123h-15.168v12.941h14.054v4.124h-14.054v13.591h16.063v4.124z\"></path><path d=\"M107.46 86.922h-11.206v34.781h-4.558v-34.781h-11.228v-4.125h26.992v4.125z\"></path><path fill=\"url(#a)\" d=\"M45.407 15.604c4.399 13.452 6.064 37.449 18.928 37.449.979 0 1.969-.095 2.962-.285-11.693-2.727-13.079-26.462-20.214-38.754-.56.509-1.115 1.039-1.676 1.59\"></path><path fill=\"url(#b)\" d=\"M47.083 14.014c7.135 12.292 8.521 36.027 20.214 38.754.918-.168 1.839-.424 2.762-.746-10.496-5.143-13.397-28.192-21.5-39.289-.491.41-.984.837-1.476 1.281\"></path><path fill=\"#14559A\" d=\"M57.364 6.704c-.977 0-1.969.096-2.964.285-2.603.491-5.247 1.611-7.913 3.308.728.719 1.422 1.541 2.073 2.438 2.711-2.249 5.404-3.911 8.087-4.911 1.007-.373 2.011-.653 3.017-.838-.726-.186-1.492-.282-2.3-.282\"></path><path fill=\"url(#c)\" d=\"M78.251 47.282c1.074-.854 2.15-1.798 3.228-2.829-4.47-13.389-6.07-37.729-19.023-37.729-.926 0-1.861.086-2.792.259 11.798 2.934 13.309 28.605 18.587 40.299\"></path><path fill=\"#3092C4\" d=\"M59.664 6.984c-.726-.185-1.492-.281-2.301-.281l5.094.019c-.927 0-1.861.086-2.793.262\"></path><path fill=\"#1969BC\" d=\"M78.026 50.126c-.506-.483-.987-1.013-1.46-1.579-2.179 1.543-4.351 2.713-6.507 3.475.767.375 1.572.653 2.426.826.662.136 1.347.205 2.067.205 2.421 0 4.334-.286 5.963-1.068-.897-.485-1.72-1.112-2.489-1.859\"></path><path fill=\"url(#d)\" d=\"M56.646 7.825c10.569 5.528 11.487 30.56 19.92 40.723.565-.398 1.125-.82 1.684-1.265-5.279-11.695-6.788-37.368-18.585-40.3-1.007.188-2.012.467-3.019.842\"></path><path fill=\"url(#e)\" d=\"M48.559 12.734c8.103 11.097 11.004 34.146 21.5 39.289 2.158-.762 4.328-1.932 6.507-3.475-8.433-10.163-9.352-35.195-19.92-40.723-2.683.998-5.376 2.66-8.087 4.909\"></path><path fill=\"url(#f)\" d=\"M40.222 15.28c-1.271 2.872-2.568 6.646-4.136 11.574 3.118-4.395 6.228-8.181 9.32-11.25-.427-1.309-.883-2.517-1.376-3.592-1.264.968-2.538 2.057-3.808 3.268\"></path><path fill=\"#2B74B1\" d=\"M45.157 11.184c-.373.267-.749.54-1.125.828.493 1.076.949 2.283 1.375 3.592.562-.549 1.119-1.082 1.677-1.59-.601-1.028-1.237-1.978-1.927-2.83\"></path><path fill=\"#125A9E\" d=\"M46.486 10.296c-.443.281-.884.577-1.331.887.691.852 1.327 1.802 1.928 2.833.493-.446.985-.875 1.476-1.282-.651-.897-1.344-1.719-2.073-2.438\"></path><path fill=\"url(#g)\" d=\"M118.572 5.68c-5.977 23.05-18.461 41.565-28.927 46.232h-.021l-.565.241-.068.027-.161.062-.072.03-.261.092-.108.038-.13.043-.126.044-.112.037-.223.068-.095.025-.151.041-.102.028-.164.042-.201.044c.473.175.966.263 1.497.263 9.924 0 19.932-17.786 36.489-47.363h-6.501l.002.006z\"></path><path fill=\"url(#h)\" d=\"M33.931 7.64l.018-.017.023-.015h.013l.161-.062.032-.016.041-.018.173-.062h.009l.381-.133.056-.015.164-.049.075-.024.164-.049.063-.016.545-.142.075-.017.159-.031.079-.024.16-.03h.037l.332-.062h.066l.153-.026.086-.016.146-.022.082-.015.357-.032c-.344-.032-.697-.054-1.057-.054-11.177 0-26.576 20.738-33.513 47.594h1.337c2.22-3.959 4.214-7.705 6.037-11.22 4.859-19.022 14.754-31.996 23.544-35.433\"></path><path fill=\"#0D82CA\" d=\"M40.222 15.28c1.271-1.211 2.544-2.3 3.808-3.268-.288-.632-.587-1.217-.907-1.753-1.022 1.241-1.956 2.877-2.901 5.021\"></path><path fill=\"#0D82CA\" d=\"M41.141 7.797c.73.611 1.383 1.454 1.982 2.462.188-.231.379-.444.578-.646-.831-.774-1.728-1.409-2.701-1.889l.119.057.022.016\"></path><path fill=\"url(#i)\" d=\"M10.388 43.072c10.191-19.64 15.02-32.069 23.544-35.433-8.789 3.439-18.686 16.412-23.544 35.433\"></path><path fill=\"#127BCA\" d=\"M43.7 9.614c-.199.203-.387.415-.578.646.32.536.618 1.119.909 1.753.376-.289.752-.561 1.125-.829-.461-.569-.948-1.097-1.456-1.57\"></path><path fill=\"url(#j)\" d=\"M15.015 54.203l-.185.022h-.035l-.157.016h-.026l-.374.025h-.039c10.314-.289 15.03-5.453 17.37-12.944 1.777-5.678 3.238-10.462 4.518-14.476-4.32 6.081-8.661 13.33-13.024 21.451-2.104 3.914-5.304 5.549-8.048 5.898\"></path><path fill=\"url(#k)\" d=\"M15.015 54.199c2.744-.35 5.944-1.983 8.048-5.899 4.363-8.118 8.706-15.369 13.022-21.451 1.571-4.929 2.866-8.701 4.138-11.573-8.604 8.189-17.24 21.806-25.208 38.919\"></path><path fill=\"#05A1E6\" d=\"M10.388 43.072c-1.824 3.515-3.818 7.26-6.039 11.22h3.889c.514-3.932 1.244-7.681 2.149-11.218\"></path><path fill=\"url(#l)\" d=\"M37.225 6.791l-.083.016-.146.021-.085.015-.153.027-.066.016-.332.058h-.037l-.162.032-.081.021-.157.031-.074.018-.546.142-.063.019-.165.049-.075.019-.163.048-.06.016-.379.133-.172.06-.072.03-.16.06-.053.026c-8.523 3.364-13.352 15.793-23.543 35.432-.905 3.538-1.638 7.287-2.15 11.218h.546l3.739-.016h1.714l.374-.025h.024l.157-.016h.038l.185-.022c7.967-17.112 16.604-30.729 25.208-38.918.945-2.144 1.878-3.781 2.898-5.02-.597-1.008-1.25-1.853-1.98-2.465l-.021-.016-.122-.059-.12-.061-.117-.057-.138-.058-.108-.047-.226-.094-.096-.037-.168-.067-.091-.03-.234-.08h-.019l-.271-.077-.061-.019-.228-.064-.053-.015c-.185-.05-.375-.089-.567-.124l-.059-.016-.246-.04-.048-.015-.291-.038h-.051l-.224-.025-.357.033\"></path><path fill=\"url(#m)\" d=\"M95.226 18.441c-1.961 6.281-3.549 11.463-4.931 15.727 5.381-7.404 10.68-16.718 15.728-27.467-5.889 1.849-9.029 6.081-10.797 11.74\"></path><path fill=\"url(#n)\" d=\"M90.465 51.52c-.274.14-.55.272-.82.393 10.466-4.668 22.951-23.183 28.927-46.233h-1.211c-13.733 24.53-18.149 40.952-26.896 45.84\"></path><path fill=\"#079AE1\" d=\"M83.631 49.459c2.277-2.779 4.132-7.504 6.665-15.292-2.921 4.012-5.861 7.462-8.804 10.274l-.015.025c.642 1.923 1.346 3.622 2.149 4.992\"></path><path fill=\"#1969BC\" d=\"M83.631 49.459c-.775.946-1.596 1.666-2.509 2.2-.2.117-.402.227-.608.326.964.52 2.016.868 3.193 1.007l.522.046h.031l.251.016h.8520000000000001l.096-.016.188-.016h.09100000000000001l.205-.022h.015l.063-.015.218-.034h.064l.245-.041h.039l.489-.104c-1.351-.493-2.481-1.66-3.455-3.32\"></path><path fill=\"#1E5CB3\" d=\"M64.335 53.053c.979 0 1.968-.096 2.961-.287.919-.167 1.84-.422 2.762-.744.767.375 1.573.653 2.425.827.662.135 1.348.204 2.069.204h-10.217z\"></path><path fill=\"#1E5CB3\" d=\"M74.552 53.053c2.419 0 4.334-.287 5.962-1.068.964.521 2.016.868 3.193 1.007l.522.045h.031l.251.016h.301-10.26z\"></path><path fill=\"#1D60B5\" d=\"M84.812 53.053h.5589999999999999l.096-.016.19-.016h.093l.203-.022h.017l.062-.015.218-.033.066-.015.246-.04h.039l.489-.104c.473.174.966.263 1.498.263l-3.773.016-.003-.018z\"></path><path fill=\"#175FAB\" d=\"M81.482 44.467v-.016c-1.078 1.031-2.153 1.976-3.228 2.83-.561.445-1.12.867-1.686 1.265.473.565.954 1.096 1.461 1.579.77.746 1.591 1.374 2.488 1.859.205-.1.408-.21.607-.326.915-.534 1.734-1.254 2.51-2.2-.803-1.37-1.507-3.069-2.148-4.992\"></path><path fill=\"url(#o)\" d=\"M113.525 5.68h-6.096l-.966.047-.45.962c-5.046 10.749-10.346 20.063-15.727 27.468-2.53 7.786-4.387 12.511-6.664 15.291.973 1.661 2.106 2.829 3.452 3.324l.106-.023h.022l.074-.017.169-.042.1-.029.151-.04.094-.026.224-.068.112-.037.126-.046.129-.041.105-.04.263-.092.073-.027.161-.063.069-.025.565-.241h.019c.271-.12.546-.253.819-.393 8.75-4.888 13.166-21.31 26.898-45.84h-3.835l.007-.002z\"></path><path fill=\"#7DCBEC\" d=\"M37.583 6.758l.063.016.159.017h.054l.29.037.05.016.245.041.061.015.566.125.051.016.227.064.063.019.269.077.02.016.236.081.09.029.169.069.096.034.224.094.11.047.135.059.12.056.119.062c.974.479 1.871 1.117 2.702 1.89.305-.322.625-.61.958-.87-1.815-1.288-3.874-2.022-6.246-2.022-.275 0-.549.016-.829.037\"></path><path fill=\"#5EC5ED\" d=\"M43.7 9.614c.508.473.995 1.001 1.456 1.57.445-.31.887-.608 1.331-.887-.581-.582-1.193-1.104-1.831-1.553-.332.257-.651.548-.956.87\"></path><path fill=\"url(#p)\" d=\"M1803.007 448.452l.164.007c.47 0 .878-.145 1.237-.4.38.299.838.404 1.476.404h-3.086l.209-.011\"></path><path fill=\"url(#q)\" d=\"M1805.884 448.463c-.637 0-1.096-.105-1.476-.404.126-.089.247-.192.362-.307.528.336 1.052.558 1.568.656.197.037.393.056.587.056h-1.041v-.001z\"></path><path fill=\"url(#r)\" d=\"M90.295 34.172c1.384-4.267 2.968-9.447 4.933-15.73 1.771-5.661 4.905-9.894 10.792-11.741l.454-.962c-9.597.575-14.082 5.457-16.339 12.687-3.947 12.622-6.339 20.803-8.641 26.017 2.94-2.812 5.88-6.263 8.801-10.271\"></path>\r\n</svg>'),
(8, 'Rubby', '<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#D91404\" d=\"M82.518 54.655c-12.92 8.326-25.722 16.577-38.862 25.043 19.678 2.687 39.005 5.325 58.715 8.016-6.714-11.181-13.256-22.074-19.853-33.059zM107.927 17.812c-1.735 2.604-3.473 5.207-5.205 7.813-5.95 8.951-11.898 17.901-17.841 26.855-.331.5-.76.896-.294 1.664 5.744 9.483 11.441 18.996 17.152 28.498.901 1.501 1.813 2.996 2.979 4.436l3.463-69.191-.254-.075zM29.529 47.38c.269.255.94.402 1.251.249 5.509-2.708 11.053-5.355 16.442-8.286 1.756-.954 3.106-2.667 4.621-4.055 5.013-4.597 10.017-9.204 15.021-13.812.307-.283.668-.556.852-.913 1.797-3.513 3.562-7.042 5.391-10.675-2.181-.817-4.248-1.62-6.34-2.35-.284-.099-.73.098-1.04.27-4.843 2.706-9.777 5.267-14.467 8.218-2.347 1.476-4.259 3.651-6.337 5.547-3.347 3.056-6.692 6.119-9.992 9.229-.876.825-1.674 1.768-2.355 2.76-2.258 3.286-4.446 6.619-6.737 10.048 1.282 1.326 2.445 2.592 3.69 3.77zM49.662 42.887c-2.739 11.577-5.465 23.088-8.279 34.978 13.199-8.504 26.093-16.812 38.901-25.065-10.193-3.3-20.354-6.589-30.622-9.913zM71.499 23.446l11.22 27.292c7.324-11.001 14.502-21.785 21.843-32.815-11.151 1.863-22.036 3.681-33.063 5.523zM50.122 40.519c10.042 3.261 19.885 6.456 30.012 9.743-3.761-9.163-7.393-18.005-11.101-27.035l-18.911 17.292zM29.944 54.131l-10.504 25.109c6.731-.199 13.257-.392 20.005-.591-3.168-8.176-6.274-16.192-9.501-24.518zM39.683 72.826l.248-.054c2.401-9.988 4.838-19.907 7.291-30.284-5.47 2.842-10.688 5.554-16.05 8.341 2.735 7.112 5.653 14.612 8.511 21.997zM100.525 16.304c-3.195-.846-6.387-1.696-9.585-2.536-4.593-1.207-9.19-2.401-13.781-3.62-.573-.152-.989-.251-1.326.44-1.622 3.324-3.296 6.624-4.944 9.935-.051.103-.041.237-.08.492 9.948-1.507 19.83-3.005 29.71-4.502l.006-.209zM81.993 8.742c8.579 2.374 17.158 4.747 26.037 7.203l-4.302-12.258c-7.29 1.617-14.493 3.214-21.696 4.811l-.039.244zM89.875 88.1l-21.361-2.916c-8.873-1.211-17.73-2.544-26.623-3.569-3.225-.371-6.536-.029-9.806.026-2.687.046-5.374.148-8.06.233-.277.008-.553.064-.828.361 22.21 2.054 44.422 4.107 66.631 6.162l.047-.297zM19.878 71.576c2.864-6.641 5.712-13.287 8.586-19.922.288-.667.267-1.118-.296-1.653-1.203-1.145-2.319-2.378-3.634-3.744l-5.241 25.871.193.092c.133-.214.294-.414.392-.644zM76.29 6.989c4.827-1.246 9.724-2.218 14.592-3.305.314-.071.622-.175.932-.264l-.047-.238-20.916 2.813c1.965.859 3.478 1.5 5.439.994zM30.975 109.422v8.547h-4.724v-22.277h6.491c3.026 0 5.266.551 6.719 1.653s2.18 2.776 2.18 5.02c0 1.311-.361 2.477-1.083 3.497-.721 1.021-1.741 1.822-3.063 2.401l6.553 9.705h-5.242l-5.317-8.547h-2.514zm0-3.84h1.524c1.492 0 2.595-.25 3.306-.747.71-.498 1.066-1.28 1.066-2.346 0-1.057-.363-1.808-1.09-2.255-.726-.447-1.851-.671-3.374-.671h-1.433v6.019zM58.553 117.969l-.624-2.179h-.244c-.498.793-1.204 1.404-2.117 1.836-.915.432-1.957.647-3.124.647-2.002 0-3.51-.535-4.526-1.607s-1.523-2.613-1.523-4.624v-11.108h4.647v9.95c0 1.229.219 2.151.656 2.766.436.615 1.131.921 2.086.921 1.301 0 2.24-.435 2.819-1.302.579-.869.869-2.308.869-4.319v-8.015h4.647v17.035h-3.566zM76.472 100.613c2.011 0 3.586.786 4.725 2.355 1.137 1.569 1.705 3.72 1.705 6.453 0 2.813-.587 4.992-1.759 6.535-1.174 1.545-2.771 2.316-4.793 2.316-2.001 0-3.57-.727-4.708-2.18h-.32l-.776 1.875h-3.551v-23.707h4.647v5.516c0 .701-.062 1.823-.184 3.368h.184c1.086-1.686 2.697-2.531 4.83-2.531zm-1.494 3.719c-1.147 0-1.985.353-2.513 1.059-.528.707-.804 1.872-.823 3.498v.502c0 1.829.271 3.139.814 3.932.544.792 1.405 1.188 2.584 1.188.954 0 1.713-.44 2.277-1.318s.846-2.156.846-3.832c0-1.676-.285-2.934-.854-3.772-.568-.838-1.345-1.257-2.331-1.257zM83.999 100.934h5.089l3.215 9.584c.274.833.463 1.818.563 2.956h.092c.111-1.046.329-2.032.654-2.956l3.154-9.584h4.982l-7.207 19.214c-.66 1.777-1.602 3.108-2.825 3.992-1.225.884-2.654 1.325-4.29 1.325-.803 0-1.59-.086-2.361-.259v-3.687c.559.131 1.168.197 1.828.197.822 0 1.541-.251 2.156-.754.615-.502 1.095-1.261 1.439-2.277l.274-.839-6.763-16.912z\"></path>\r\n</svg>'),
(9, 'Javascript', '<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#F0DB4F\" d=\"M1.408 1.408h125.184v125.185h-125.184z\"></path><path fill=\"#323330\" d=\"M116.347 96.736c-.917-5.711-4.641-10.508-15.672-14.981-3.832-1.761-8.104-3.022-9.377-5.926-.452-1.69-.512-2.642-.226-3.665.821-3.32 4.784-4.355 7.925-3.403 2.023.678 3.938 2.237 5.093 4.724 5.402-3.498 5.391-3.475 9.163-5.879-1.381-2.141-2.118-3.129-3.022-4.045-3.249-3.629-7.676-5.498-14.756-5.355l-3.688.477c-3.534.893-6.902 2.748-8.877 5.235-5.926 6.724-4.236 18.492 2.975 23.335 7.104 5.332 17.54 6.545 18.873 11.531 1.297 6.104-4.486 8.08-10.234 7.378-4.236-.881-6.592-3.034-9.139-6.949-4.688 2.713-4.688 2.713-9.508 5.485 1.143 2.499 2.344 3.63 4.26 5.795 9.068 9.198 31.76 8.746 35.83-5.176.165-.478 1.261-3.666.38-8.581zm-46.885-37.793h-11.709l-.048 30.272c0 6.438.333 12.34-.714 14.149-1.713 3.558-6.152 3.117-8.175 2.427-2.059-1.012-3.106-2.451-4.319-4.485-.333-.584-.583-1.036-.667-1.071l-9.52 5.83c1.583 3.249 3.915 6.069 6.902 7.901 4.462 2.678 10.459 3.499 16.731 2.059 4.082-1.189 7.604-3.652 9.448-7.401 2.666-4.915 2.094-10.864 2.07-17.444.06-10.735.001-21.468.001-32.237z\"></path>\r\n</svg>');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `u_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `proficiency` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`u_id`, `name`, `proficiency`) VALUES
(2, 'html', 1),
(2, 'java', 1),
(2, 'php', 2),
(2, 'python', 2),
(5, 'html', 1),
(5, 'java', 2),
(5, 'php', 3),
(5, 'python', 1),
(5, 'angular', 1),
(6, 'java', 1),
(6, 'html', 3),
(6, 'php', 1),
(6, 'python', 1),
(6, 'angular', 2),
(10, 'html', 3),
(10, 'java', 1),
(10, 'php', 3),
(10, 'python', 1),
(10, 'Javascript', 1),
(9, 'html', 2),
(9, 'java', 1),
(9, 'php', 3),
(9, 'python', 2),
(9, 'angular', 2),
(9, 'Rubby', 1),
(11, 'html', 1),
(11, 'Javascript', 1),
(11, '.NET', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `social_id`
--

CREATE TABLE `social_id` (
  `usr_id` int(11) DEFAULT NULL,
  `fb` text,
  `linked_in` text,
  `github` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_id`
--

INSERT INTO `social_id` (`usr_id`, `fb`, `linked_in`, `github`) VALUES
(2, '', 'https://www.linkedin.com/in/waqar-arain/', 'https://github.com/Waqar-Arain/'),
(5, 'https://www.facebook.com/profile.php?id=100008252890120', 'https://www.linkedin.com/in/shahzaib-ali-8b217496/', 'https://github.com/shahzaib78631');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `name`) VALUES
(1, 'Badminton'),
(2, 'Cricket'),
(3, 'Bowling'),
(4, 'Boxing'),
(5, 'Tennis'),
(6, 'Skateboarding'),
(7, 'Basketball'),
(8, 'Baseball'),
(9, 'Fishing'),
(10, 'Running'),
(11, 'Table tennis'),
(12, 'Golf'),
(13, 'Volleyball');

-- --------------------------------------------------------

--
-- Table structure for table `student_teacher_opinion`
--

CREATE TABLE `student_teacher_opinion` (
  `usr_id` varchar(8) NOT NULL,
  `question_number` int(10) NOT NULL,
  `choosen_answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_teacher_opinion`
--

INSERT INTO `student_teacher_opinion` (`usr_id`, `question_number`, `choosen_answer`) VALUES
('10', 0, '10'),
('10', 1, '1'),
('10', 2, '2'),
('11', 0, '9'),
('11', 1, '2'),
('11', 2, '2'),
('5', 0, '9'),
('5', 1, '3'),
('5', 2, '4'),
('7', 0, '9'),
('7', 1, '2'),
('7', 2, '1'),
('9', 0, '9'),
('9', 1, '1'),
('9', 2, '2');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`) VALUES
(1, 'Sir Mohsin'),
(2, 'Sir Zubair'),
(3, 'Sir Junaid'),
(4, 'Sir Naeem'),
(5, 'Sir Qasim '),
(6, 'Ma\'am Isma'),
(7, 'Ma\'am Shafia'),
(8, 'Ma\'am Hira Noman'),
(9, 'Ma\'am Samita Bai'),
(10, 'Ma\'am Bushra');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_answers`
--

CREATE TABLE `teachers_answers` (
  `q_id` int(10) NOT NULL,
  `o_id` int(11) NOT NULL,
  `options` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers_answers`
--

INSERT INTO `teachers_answers` (`q_id`, `o_id`, `options`) VALUES
(1, 1, 'Enrichment activities for students to further unde'),
(1, 2, 'Friendly class environment and listen to our probl'),
(1, 3, 'Lenient in marking'),
(2, 1, 'Along with lectures tell how students future will '),
(2, 2, 'I think they have enough burden already'),
(2, 3, 'Must linked themself with organizaion\'s current ch'),
(2, 4, 'Presented the lesson by connecting it with the war');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_question`
--

CREATE TABLE `teachers_question` (
  `q_id` int(11) NOT NULL,
  `question` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers_question`
--

INSERT INTO `teachers_question` (`q_id`, `question`) VALUES
(2, 'What is so special about your favourite teacher'),
(3, 'I think teachers needs to bring improvement in');

-- --------------------------------------------------------

--
-- Table structure for table `usr`
--

CREATE TABLE `usr` (
  `usr_id` int(11) NOT NULL,
  `first_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `rollnumber` varchar(8) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `image` text,
  `batch` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr`
--

INSERT INTO `usr` (`usr_id`, `first_name`, `last_name`, `email`, `rollnumber`, `pass`, `created_at`, `image`, `batch`) VALUES
(2, 'Waqar', 'Arain', 'adil.cn85@gmail.com', 'F16SW58', '12345', '2020-01-29 11:57:51', 'a4a726ff56f970Madara.jpg', 'F16SW'),
(5, 'Shahzaib', 'Ali', 'shahzaib78631@gmail.com', 'F16SW53', '123', '2020-02-03 20:01:53', '09e123d00c684davatar.jpg', 'F16SW'),
(6, 'Hira', 'Abid', 'hira.abid123@gmail.com', 'F16SW123', '123', '2020-02-11 13:56:59', NULL, 'F16SW'),
(7, 'Fiza', 'Azam', 'fiza.azam32@gmail.com', 'F16SW32', '123', '2020-02-11 13:57:19', NULL, 'F16SW'),
(8, 'fizan', 'shaikh', 'fizan_shaikh@gmail.com', 'F16SW1', '123', '2020-02-12 19:02:09', NULL, '17SW'),
(9, 'haseeb', 'Khatri', 'haseeb_khatri@gmail.com', 'F16SW2', '123', '2020-02-12 19:02:49', NULL, '17SW'),
(10, 'Saif', 'Shaikh', 'saif_shaikh@gmail.com', '18SW3', '123', '2020-02-12 19:03:42', NULL, '18SW'),
(11, 'Usama', 'Habib', 'usama_habib@gmail.com', 'F16SW38', '123', '2020-02-12 19:11:18', NULL, 'F16SW');

-- --------------------------------------------------------

--
-- Table structure for table `usr_access`
--

CREATE TABLE `usr_access` (
  `usr_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr_access`
--

INSERT INTO `usr_access` (`usr_id`, `role_id`) VALUES
(2, 1),
(5, 1),
(6, 1),
(7, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usr_lang`
--

CREATE TABLE `usr_lang` (
  `usr_id` int(11) DEFAULT NULL,
  `lang` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usr_sports`
--

CREATE TABLE `usr_sports` (
  `usr_id` int(11) NOT NULL,
  `sports_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr_sports`
--

INSERT INTO `usr_sports` (`usr_id`, `sports_id`) VALUES
(2, '3'),
(5, '5'),
(6, '5');

-- --------------------------------------------------------

--
-- Table structure for table `usr_tech`
--

CREATE TABLE `usr_tech` (
  `usr_id` int(11) DEFAULT NULL,
  `tech` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `social_id`
--
ALTER TABLE `social_id`
  ADD KEY `usr_id` (`usr_id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_teacher_opinion`
--
ALTER TABLE `student_teacher_opinion`
  ADD PRIMARY KEY (`usr_id`,`question_number`) USING BTREE;

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers_answers`
--
ALTER TABLE `teachers_answers`
  ADD PRIMARY KEY (`q_id`,`o_id`) USING BTREE;

--
-- Indexes for table `teachers_question`
--
ALTER TABLE `teachers_question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `usr`
--
ALTER TABLE `usr`
  ADD PRIMARY KEY (`usr_id`),
  ADD UNIQUE KEY `rollnumber` (`rollnumber`);

--
-- Indexes for table `usr_access`
--
ALTER TABLE `usr_access`
  ADD KEY `usr_id` (`usr_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `usr_lang`
--
ALTER TABLE `usr_lang`
  ADD KEY `usr_id` (`usr_id`);

--
-- Indexes for table `usr_sports`
--
ALTER TABLE `usr_sports`
  ADD PRIMARY KEY (`usr_id`);

--
-- Indexes for table `usr_tech`
--
ALTER TABLE `usr_tech`
  ADD KEY `usr_id` (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teachers_question`
--
ALTER TABLE `teachers_question`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usr`
--
ALTER TABLE `usr`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `usr` (`usr_id`);

--
-- Constraints for table `social_id`
--
ALTER TABLE `social_id`
  ADD CONSTRAINT `social_id_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`usr_id`);

--
-- Constraints for table `usr_access`
--
ALTER TABLE `usr_access`
  ADD CONSTRAINT `usr_access_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`usr_id`),
  ADD CONSTRAINT `usr_access_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `usr_lang`
--
ALTER TABLE `usr_lang`
  ADD CONSTRAINT `usr_lang_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`usr_id`);

--
-- Constraints for table `usr_tech`
--
ALTER TABLE `usr_tech`
  ADD CONSTRAINT `usr_tech_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`usr_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
