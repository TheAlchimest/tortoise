<?php


include 'route.php';
include 'src/about.php';
include 'src/dashboard.php';
include 'src/contact.php';
include 'src/login.php';
include 'src/logout.php';
include 'src/user.php';
include 'src/profile.php';




$route = new Route();

$route->add('/', 'Dashboard');
$route->add('/dashboard', 'Dashboard');
$route->add('/about', 'About');
$route->add('/contact', 'Contact');
$route->add('/user', 'User');
$route->add('/login', 'Login');
$route->add('/logout', 'Logout');
$route->add('/profile', 'Profile');


$route->submit();

?>

