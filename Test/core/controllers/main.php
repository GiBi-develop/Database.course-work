<?php
// Если ничего нет в адрессной строке, то будет открыт этот файл, он как-бы начальная страница
    function action_index(){
        require 'F:\XAPP\htdocs\Test\pages\index.html';
    }
    function action_contacts()
    {
        echo 'Contacts page';
    }
    function action_registration(){
        if($_SERVER['REQUEST_METHOD'] == 'POST'){ // делаем тут валидацию пользователей
            $formData = [
                'login' => htmlspecialchars(trim($_POST['login'])),
                'password' => trim($_POST['email']),
                'email' => trim($_POST['email'])
            ];

            $rules = [
                'login' => ['required'],
                'password' => ['required','password'],
                'email' => ['required','email']
            ];

            $erors = validtaeForm($rules,$formData);
            if(empty($erors)){
                //todo Save new user
            }
        }
        renderView('registration',$erors);// Папка такая с регистрацией, этой функцией можно пользоваться, потому что и библиотека и этот файл подключены в моем главном файле => ОНИ ДРУГ ДРУГА ВИДЯТ
    }