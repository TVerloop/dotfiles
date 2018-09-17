#!/bin/bash

term_color_rgb () {
    local red=$1; shift
    local green=$1; shift
    local blue=$1; shift
    printf "\e[38;2;%b;%b;%bm" ${red} ${green} ${blue}
}

term_color_reset () {
    printf "\033[0m"
}

term_color_print () {
    local red=$1; shift
    local green=$1; shift
    local blue=$1; shift
    local string=$1; shift
    printf "$(term_color_rgb %b %b %b) %b $(term_color_reset)" ${red} ${green} ${blue} ${string}
}
