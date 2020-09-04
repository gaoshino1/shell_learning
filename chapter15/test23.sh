#!/bin/bash
# read file and create insert statements for MySQL

outputfile='members.sql'
IFS=','
while read lname fname address city state zip
do
    cat >> $outputfile << EOF
INSERT INTO members (lname, fname, address, city, state, zip) VALUES ('$lname', '$fname', '$address', '$city', '$state', '$zip');
EOF
done < ${1}