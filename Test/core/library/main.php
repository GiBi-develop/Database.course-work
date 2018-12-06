<?php
    function show404page(){
        header("HTTP/1.1 404 Not Found");//Код ошибки имеет строго определенное название(см на Вики))

        //todo заменить на view
        echo '404 page';
    }
    function renderView($viewName, $formErrors){
        include 'core/views/'.$viewName.'.php';
    }