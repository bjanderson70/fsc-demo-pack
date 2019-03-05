#!/bin/bash

#create scratch org
sfdx force:org:createTEST -f config/demo-scratch-def.json -a FSCADK2 --setdefaultusername -d 1

#pckg installs
sfdx force:package:install --package 04t1E000000lU0M -w 20 
sfdx force:package:install --package 04t1E000001Iql5 -w 20

sfdx force:mdapi:deploy --deploydir app-config

sfdx force:mdapi:deploy --deploydir data-config

sfdx force:mdapi:deploy --deploydir org-config

sfdx force:source:push 

sfdx force:user:permset:assign -n FinancialServicesCloudStandard

sfdx force:apex:execute -f config/create-demo-data-setup.apex
sfdx force:apex:execute -f config/create-demo-data.apex


sfdx force:org:open


