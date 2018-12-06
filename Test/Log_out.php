<?php
session_start();
?>
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
        <li><a href="mysqli.php">Собаки и клубы</a></li>
        <li><a href="Exibitions.php">Выставки</a></li>
        <li><a href="Log_in.php">Регистрация</a></li>
    </ul>
</div>
<form action="log_out_check.php" method="post">
    <button type="submit" name="sign_out" class="btn btn-primary">Sign out</button>
    <?php
    // Проверяем, пусты ли переменные логина и id пользователя
    if (empty($_SESSION['login']) or empty($_SESSION['id']))
    {
        // Если пусты, то мы не выводим ссылку
        echo "Вы вошли на сайт, как гость";
    }
    else
    {
        // Если не пусты, то мы выводим ссылку
        echo "<br>Вы вошли на сайт, как ".$_SESSION['login']."<br><a  href='admin.php'>Страничка для внесения/изменения данных</a>";
    }
    ?>
</form>
</body>
</html>