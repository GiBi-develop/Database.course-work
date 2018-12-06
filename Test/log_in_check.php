<?php
session_start();
if (isset($_POST['login'])) { $login = $_POST['login']; if ($login == '') { unset($login);} } //заносим введенный пользователем логин в переменную $login, если он пустой, то уничтожаем переменную
if (isset($_POST['password'])) { $password=$_POST['password']; if ($password =='') { unset($password);} }
//заносим введенный пользователем пароль в переменную $password, если он пустой, то уничтожаем переменную
if (empty($login) or empty($password)) //если пользователь не ввел логин или пароль, то выдаем ошибку и останавливаем скрипт
{
    exit ("Вы ввели не всю информацию, вернитесь назад и заполните все поля!");
}
//если логин и пароль введены, то обрабатываем их, чтобы теги и скрипты не работали, мало ли что люди могут ввести
$login = stripslashes($login);
$login = htmlspecialchars($login);
$password = stripslashes($password);
$password = htmlspecialchars($password);
//удаляем лишние пробелы
$login = trim($login);
$password = trim($password);
// подключаемся к базе
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

$query = "SELECT * FROM admin WHERE login='$login'";
$result = mysqli_query($link, $query) or die("Ошибка".mysqli_error($link));
if($res === false)
{
    echo mysqli_error($link);
}
else
{
    $row = mysqli_fetch_row($result);
    if(!mysqli_num_rows($result))
    {
        echo "Введенный вами пароль или логин не верны";
    }
    else{
        if($row[2]==$password){
            $_SESSION['login']=$row[1];
            $_SESSION['id']=$row[0];
            include 'Log_out.php';
            //echo "Вы успешно вошли на сайт! <a href='Log_out.php'>Главная страница</a>";
        }
        else{
            exit ("Извините, введённый вами login или пароль неверный.");
        }
    }
    mysqli_free_result($result);
}
mysqli_close($link);
?>