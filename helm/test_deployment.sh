#!/bin/bash
TAG=$app_version
result=$(eval helm ls | grep test)
if [ $? -ne "0" ]; then
   helm install test --set image.tag=$TAG testchart
else
   helm upgrade test --set image.tag=$TAG testchart
fi