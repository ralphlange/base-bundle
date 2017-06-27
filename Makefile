#*************************************************************************
# Copyright (c) 2002 The University of Chicago, as Operator of Argonne
#     National Laboratory.
# Copyright (c) 2002 The Regents of the University of California, as
#     Operator of Los Alamos National Laboratory.
# EPICS BASE is distributed subject to a Software License Agreement found
# in file LICENSE that is included with this distribution.
#*************************************************************************

TOP = core
include $(TOP)/configure/CONFIG

# Bundle build installs in the parent directory
INSTALL_LOCATION = $(TOP)/..

# DIRS in any order
DIRS = core database ca

ca_DEPEND_DIRS += core
database_DEPEND_DIRS += core ca

include $(TOP)/configure/RULES_TOP
