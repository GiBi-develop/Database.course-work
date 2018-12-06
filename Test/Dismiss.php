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
<form action="Dismiss_check.php" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Id</label>
        <input type="text" name="Id" class="form-control" id="exampleInputEmail1" placeholder="Id эксперта, которого надо отстранить">
    </div>
    <button type="submit" name="submit" class="btn btn-primary">Подтверждение</button>
</form>
<br>
<form action="Dismiss_check_reset.php" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Id</label>
        <input type="text" name="Id_reset" class="form-control" id="exampleInputEmail1" placeholder="Id эксперта, которого надо восстановить">
    </div>
    <button type="submit" name="submit" class="btn btn-primary">Подтверждение</button>
</form>
<br>
<?php
error_reporting(0);



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

$query = "SELECT experts.id, experts.Name_expert, experts.Status, club.Name_club  FROM experts INNER JOIN club ON experts.Club_id = club.id ORDER BY experts.id";

$result = mysqli_query($link, $query) or die("Ошибка".mysqli_error($link));

if($res === false)
{
    echo mysqli_error($link);
}
else
{
    $rows = mysqli_num_rows($result);//Количество строк в запросе

    echo "<table class=\"table\"><tr><th>Id эксперта</th><th>Имя эксперта</th><th>Статус эксперта(1-назначен, 0-отстранен)</th><th>Название клуба</th></tr>";
    for($i = 0; $i < $rows ; ++$i)
    {
        $row = mysqli_fetch_row($result);
        echo "<tr>";
        for ($j = 0 ; $j < 5 ; ++$j) echo "<td>$row[$j]</td>";
        echo "</tr>";
    }
    echo "</table>";
    mysqli_free_result($result);
}
mysqli_close($link);

?>
</body>
</html>