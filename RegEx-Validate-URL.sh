#!/bin/bash
DATA=$(cat applist.log)
for URL in $DATA
do
    if [[ "$URL" =~ ^https?://([^/]+) ]]; then
        domain=${BASH_REMATCH[1]}
        echo "$URL is a valid URL and domain name is $domain ."
    else
       echo "$URL Invalid URL As Its Not Starting With http or https."
    fi
done

#? (question mark): Makes the preceding character optional, matching zero or one
# occurrence. Means before ? it should be s or emmpty

#https://kodekloud.com/blog/regex-shell-script/
#BASH_REMATCH[0] = https://
# BASH_REMATCH[1] = www.google.com
#BASH_REMATCH[2] = .