#!/bin/bash
# Authors : Kuanzhi Wang
# Date: 09/20/2020
cp /var/log/syslog ~
egrep -i "error" ~/syslog | tee ~/error_log_check.txt
#egrep -i "error" ~/syslog | mail -s "message subject" kuwa1058@colorado.edu
mail -s "Testing email"  kuwa1058@colorado.edu  < ~/error_log_check.txt
