#!/bin/bash

#create scratch org
sfdx force:org:create -f config/demo-scratch-def.json -a FSCADK2 --setdefaultusername -d 15

#pckg installs
sfdx force:package:install --package 04t1E000000lU07 -w 20 
#fdx force:package:install --package 04t1E000001Iql5 -w 20


sfdx force:org:open

sfdx force:org:delete

