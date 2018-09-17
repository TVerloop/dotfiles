#!/bin/bash

ps1_print_directory () {
    printf "$(term_color_rgb 236 190 123)\uf07c  ${PWD/${HOME}/'~'}$(term_color_reset)"
}

ps1_print_scm_branch () {
    printf "$(term_color_rgb 240 80 51)\uf126 $(scm_branch)$(term_color_reset)"
}

ps1_print_time () {
    printf "$(term_color_rgb 152 190 101)\uf017 $(date +%H:%M:%S)$(term_color_reset)"
}

PS1=$'┌─[ $(ps1_print_directory) | $(ps1_print_scm_branch) | $(ps1_print_time) ]\n└─[ \\u@\\h ]-> '
