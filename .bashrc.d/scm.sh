#!/bin/bash

scm_branch () {
    git branch 2>/dev/null | sed -e 's/* \(.*\)/\1/' |  awk '{ print } END { if (!NR) print "-" }'
}
