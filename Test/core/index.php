<?php
error_reporting(0);
require_once 'core/library/main.php';
require_once 'core/library/validator.php';
    $url = strtolower($_GET['url']);//Считываем все аргументы из адресной строки и делаем их с нижним регистром

    $urlSegments = explode('/',$url);//аносим их в массив

    $controllerName = (empty($urlSegments[0]))? 'main' : $urlSegments[0];//Файл
    $actionName = (empty($urlSegments[1]))? 'action_index' : 'action_'.$urlSegments[1];//Функция

    //Проверяем на существование запрашиваемой папки
    if(file_exists('core/controllers/'.$controllerName.'.php')){
        require_once 'core/controllers/'.$controllerName.'.php';

        //Проверяем на существование запрашвиваемой функции
        if(function_exists($actionName)){
            $actionName();
        }
        else{
            show404page();// Эта функции прописана в core/library/main.php
        }
    }
    else{
        show404page();// Эта функции прописана в core/library/main.php
    }

