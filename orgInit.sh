#!/bin/bash

sfdx force:org:create -f config/demo-scratch-def.json -a FSCADK2 --setdefaultusername -d 15

sfdx force:org:open

