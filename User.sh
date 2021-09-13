#!/usr/bin/bash
user=$(cat db.csv)
for j in $user
do
if id $j  &> /dev/null
then
        echo "$j user aleady created"
else
        if useradd $j
        then
                echo "$j user created"
        else
                echo "user $j creation failed"
        fi
fi

done
