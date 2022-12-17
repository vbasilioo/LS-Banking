<?php

function redirect($to){
    header('Location: '.$to);
    return;
}