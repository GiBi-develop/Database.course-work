<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="1.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-justified">
        <li><a href="index.html">Главная</a></li>
        <li><a href="Dismiss.php">Отстранение</a></li>
        <li><a href="Transition.php">Переход</a></li>
        <li><a href="purpose.php">Назначение</a></li>
    </ul>
</div>
<br>
<?php
error_reporting(0);

if (isset($_POST['Id_club'])) { $login = $_POST['Id_club']; if ($login == '') { unset($login);} } //заносим введенный пользователем логин в переменную $login, если он пустой, то уничтожаем переменную
if (isset($_POST['Id_expert'])) { $expert = $_POST['Id_expert']; if ($expert == '') { unset($expert);} } //заносим введенный пользователем логин в переменную $login, если он пустой, то уничтожаем переменную

$login = stripslashes($login);
$login = htmlspecialchars($login);
$login = trim($login);
$expert = stripslashes($expert);
$expert = htmlspecialchars($expert);
$expert = trim($expert);
// В массиве данные для получения доступа к
$settings = [
    'host' => 'localhost',
    'user' => 'root',
    'password' => '',
    'db_name' =>'coursework'
];

$link = mysqli_connect($settings['host'],$settings['user'],$settings['password'],$settings['db_name']);

if(!$link)
{
    die('Db connection Error!' .mysqli_connect_errno().' error message'.mysqli_connect_error());
}

mysqli_set_charset ($link , 'utf8');
$query1 = "SET foreign_key_checks = 0";
$result = mysqli_query($link, $query1) or die("Ошибка".mysqli_error($link));

$query = "UPDATE dogsparticipants SET Club_id = '$login' WHERE dogsparticipants.id = '$expert'";
$result = mysqli_query($link, $query) or die("Ошибка".mysqli_error($link));

$query2 = "SET foreign_key_checks = 1";
$result = mysqli_query($link, $query2) or die("Ошибка".mysqli_error($link));

if($res === false)
{
    echo mysqli_error($link);
}
else
{
    echo "Переназначение произошло";
}
mysqli_close($link);

?>
</body>
</html>