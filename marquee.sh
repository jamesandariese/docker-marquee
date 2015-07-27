#!/bin/bash

if [ x"$1" =  x ];then
    cat README.md
    exit 1
fi

W=0
L=1
while true;do 
    LL=`figlet -w 1398324 "$*" | tail -n +$L | head -1 | wc -c`
    if [ $LL -eq 0 -a $L -gt 1 ];then
        break;
    fi
    if [ $LL -gt $W ];then
        W=$LL
    fi
    L=$(( L + 1 ))
done

while true;do
    for f in `bash -c "echo {1..$W}"`;do
        sleep .06
        tput reset
        clear
        figlet -w 239872 "$* $* $* $* $* $*" | cut -c ${f}- | cut -c -"`tput cols`"
    done
done

