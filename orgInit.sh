#!/bin/bash

sfdx force:org:delete -u FSCADK2

#create scratch org
sfdx force:org:create -f config/demo-scratch-def.json -a FSCADK2 --setdefaultusername -d 1

#pckg installs
sfdx force:package:install --package 04t1E000000lU0M -w 20 
#fdx force:package:install --package 04t1E000001Iql5 -w 20


sfdx force:org:open


