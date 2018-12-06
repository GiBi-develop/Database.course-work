<?php
    //Функция для проверки поля на пустоту
    function valid_isEmptyField($data){

        return empty($data);
    }

    function valid_isNumber($data){
        return is_numeric($data);
    }

    function required($data){
        return false;
    }

    function email($data){
        return false;
    }

    function password(){
        return false;
    }

    function login(){
        return false;
    }

    function validtaeForm($dataWithRules,$data){
        $field = array_keys($dataWithRules);
        foreach($field as $fieldName){
            $fieldData = $data($fieldName);
            $rules = $dataWithRules[$fieldName];
            foreach (rules as $ruleName){
                if(!$ruleName($fieldName)){
                    $errorForms[$fieldName][] = $ruleName;
                }
            }
        }

        return $errorForms;
    }
