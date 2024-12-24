#!/bin/bash
for INPUT_STRING in $@; do
    SIZE=${#INPUT_STRING}
    STRING_LENGTH=$(expr $SIZE - 1)
    REVERSE_STRING=''
    for ((I = $STRING_LENGTH; I >= 0; I--)); do
        REVERSE_STRING=${REVERSE_STRING}${INPUT_STRING[@]:$I:1}
    done

    if [ "${INPUT_STRING}" = "${REVERSE_STRING}" ]; then
        echo "The Given string ${INPUT_STRING} is a palindrome"
    else
        echo "The Given string ${INPUT_STRING} is not palindrome"
    fi
done
