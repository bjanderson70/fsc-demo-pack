#!/bin/bash

#***variables****(will be part of heroku deployer..)
#devhub
devhub=my-hub-org

#Mark existing org for deletion
markScratchOrgForDeletion=1
#ScratchOrdDays
scratchOrgDays=15
#alias of scratch org
alias=FSCADK2
#Set this as default alias
defaultAlias=1
#config file for scratch org
config=config/demo-scratch-def.json
#package versions 
pkg1=04t1E000000lU07
pkg2=04t1E000001Iql5
lwcpkg=04t1U000005mtw3
pkgInstallWaitTime=20



#mdapi-directories
appconfig=mdapi-source/app-config
dataconfig=mdapi-source/data-config
orgconfig=mdapi-source/org-config
deployWaitTime=5


sectionDelimiter="**********=================**********"