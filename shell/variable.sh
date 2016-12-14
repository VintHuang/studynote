#!/bin/sh
firstname="vincent"
echo ${firstname}
firstname="vince"
echo $firstname
readonly secondname="hwang"
# error
# secondname="li"
echo $secondname

unset firstname
echo $firstname