#!/bin/bash

function say_hi(){
    echo "Hola Docker, tu nombre es ${NAME}"
}

function init(){
    echo "Ejecutando contenedor..."
}

init
say_hi