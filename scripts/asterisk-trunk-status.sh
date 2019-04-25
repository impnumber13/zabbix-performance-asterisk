#!/bin/env bash

# Получаем количество всех транков в системе
total=`sudo asterisk -rx 'sip show registry' | sed -n '/registrations/p' | awk '{print $1}'`
# Получаем число активных транков
active=`sudo asterisk -rx 'sip show registry' | sed -n '/Registered/p' | wc -l`
# Получаем имена транков с проблемам
offline=`sudo asterisk -rx 'sip show registry' | sed -n '/Request\|Rejected\|Authentication\|Auth/p' | awk '{print $3}'`
# Сравниваем общее число с числом активных транков и выводим сообщение об их состоянии
if [ $active -lt $total ]
then
echo Trunks offline $offline
else
echo All trunks are online
fi
