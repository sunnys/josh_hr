#!/bin/bash
if lsof -t -i:3005 >/dev/null 2>&1
then
    echo "Running"
else
    cd ~/josh_hr && bundle install && rails s -p 3005
fi
