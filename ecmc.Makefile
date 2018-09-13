#
#  Copyright (c) 2017 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# 
# Author  : Jeong Han Lee
# email   : jeonghan.lee@gmail.com
# Date    : Thursday, May 17 23:27:26 CEST 2018
# version : 0.0.3
#

where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(E3_REQUIRE_TOOLS)/driver.makefile

ifneq ($(strip $(ASYN_DEP_VERSION)),)
asyn_VERSION=$(ASYN_DEP_VERSION)
endif

ifneq ($(strip $(EXPRTK_DEP_VERSION)),)
exprtk_VERSION=$(EXPRTK_DEP_VERSION)
endif


# *** ISSUES
# driver.makefile recursively read all include directories which were installed.
# The only way to exclude header files is....
iocStats_VERSION=
autosave_VERSION=
#asyn_VERSION=
busy_VERSION=
modbus_VERSION=
ipmiComm_VERSION=
sequencer_VERSION=
sscan_VERSION=

std_VERSION=
ip_VERSION=
calc_VERSION=
pcre_VERSION=
stream_VERSION=
s7plc_VERSION=
recsync_VERSION=

devlib2_VERSION=
mrfioc2_VERSION=

#exprtk_VERSION=
motor_VERSION=
#ecmc_VERSION=
EthercatMC_VERSION=
ecmctraining_VERSION=


keypress_VERSION=
sysfs_VERSION=
symbolname_VERSION=
memDisplay_VERSION=
regdev_VERSION=
i2cDev_VERSION=

tosca_VERSION=
tsclib_VERSION=
ifcdaqdrv2_VERSION=

## The main issue is nds3, it is mandatory to disable it
## 
nds3_VERSION=
nds3epics_VERSION=
ifc14edrv_VERSION=
ifcfastint_VERSION=


nds_VERSION=
loki_VERSION=
nds_VERSION=
sis8300drv_VERSION=
sis8300_VERSION=
sis8300llrfdrv_VERSION=
sis8300llrf_VERSION=


ADSupport_VERSION=
ADCore_VERSION=
ADSimDetector_VERSION=
ADAndor_VERSION=
ADAndor3_VERSION=
ADPointGrey_VERSION=
ADProsilica_VERSION=

amcpico8_VERSION=
adpico8_VERSION=
adsis8300_VERSION=
adsis8300bcm_VERSION=
adsis8300bpm_VERSION=
adsis8300fc_VERSION=

# *** ISSUES


EXCLUDE_ARCHS += linux-ppc64e6500 


USR_CPPFLAGS += -I/opt/etherlab/include
USR_CFLAGS   += -I/opt/etherlab/include


USR_CFLAGS += -fPIC
USR_LDFLAGS += -L /opt/etherlab/lib
USR_LDFLAGS += -lethercat
USR_LDFLAGS += -Wl,-rpath=/opt/etherlab/lib

APP:=ecmcApp
APPDB:=$(APP)/Db
APPSRC:=$(APP)/src


USR_INCLUDES += -I$(where_am_I)$(APPSRC)

# TEMPLATES += $(wildcard $(APPDB)/*.db)

#HEADERS += $(APPSRC)/gitversion.h
#HEADERS += $(wildcard $(APPSRC)/*.h)
#HEADERS += $(wildcard $(APPSRC)/*.hpp)

SOURCES += $(APPSRC)/cmd.c
SOURCES += $(APPSRC)/cmd_EAT.c 

SOURCES += $(APPSRC)/ecmcAxisBase.cpp 
SOURCES += $(APPSRC)/ecmcAxisReal.cpp 
SOURCES += $(APPSRC)/ecmcAxisVirt.cpp 
SOURCES += $(APPSRC)/ecmcCommandTransform.cpp 
SOURCES += $(APPSRC)/ecmcDriveBase.cpp 
SOURCES += $(APPSRC)/ecmcDriveStepper.cpp 
SOURCES += $(APPSRC)/ecmcDriveDS402.cpp 
SOURCES += $(APPSRC)/ecmcEc.cpp 
SOURCES += $(APPSRC)/ecmcEcEntry.cpp 
SOURCES += $(APPSRC)/ecmcEcPdo.cpp 
SOURCES += $(APPSRC)/ecmcEcSDO.cpp 
SOURCES += $(APPSRC)/ecmcEcSlave.cpp 
SOURCES += $(APPSRC)/ecmcEcSyncManager.cpp 
SOURCES += $(APPSRC)/ecmcEcEntryLink.cpp 
SOURCES += $(APPSRC)/ecmcEncoder.cpp 
SOURCES += $(APPSRC)/ecmcError.cpp 
SOURCES += $(APPSRC)/ecmcFilter.cpp 

SOURCES += $(APPSRC)/ecmcMasterSlaveData.cpp 
SOURCES += $(APPSRC)/ecmcMasterSlaveIF.cpp 
SOURCES += $(APPSRC)/ecmcMonitor.cpp 
SOURCES += $(APPSRC)/ecmcPIDController.cpp 
SOURCES += $(APPSRC)/ecmcSequencer.cpp 
SOURCES += $(APPSRC)/ecmcTrajectoryTrapetz.cpp 
SOURCES += $(APPSRC)/ecmcEvent.cpp 
SOURCES += $(APPSRC)/ecmcEventConsumer.cpp 
SOURCES += $(APPSRC)/ecmcDataRecorder.cpp 
SOURCES += $(APPSRC)/ecmcDataStorage.cpp 
SOURCES += $(APPSRC)/ecmcCommandList.cpp 
SOURCES += $(APPSRC)/ecmcAxisData.cpp

SOURCES += gitversion.c

SOURCES += $(APPSRC)/hw_motor.cpp
SOURCES += $(APPSRC)/ecmcAsynPortDriver.cpp
SOURCES += $(APPSRC)/ecmcAsynLink.cpp 
SOURCES += $(APPSRC)/ecmcEcMemMap.cpp



#SOURCES += $(APPSRC)/drvAsynECMCPort.cpp



DBDS    += $(APPSRC)/ecmcController.dbd


ecmcEcMemMap$(DEP): gitversion.c

gitversion.c: 
	$(RM) $@
	sh $(where_am_I)tools/gitversion.sh $@

#SOURCES += $(APPSRC)/rtutilsSrc/rtutils.c



# db rule is the default in RULES_E3, so add the empty one

db:
