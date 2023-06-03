#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../firmware/tashtrio.s

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1731997861/tashtrio.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1731997861/tashtrio.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1731997861/tashtrio.o

# Source Files
SOURCEFILES=../../firmware/tashtrio.s



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
_/_=/
ShExtension=.sh
Device=PIC12F1840
ProjectDir=/Users/kevinpeck/Desktop/MacClassic_KeyboardMouse/tashtrio/mplab/tashtrio.X
ProjectName=tashtrio
ConfName=default
ImagePath=${DISTDIR}/tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
ImageDir=${DISTDIR}
ImageName=tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [PATH=/usr/local/share/pk2:$PATH;/usr/local/bin/pk2cmd -F${DISTDIR}/tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} -Y -PPIC12F1840 -M]"
	@PATH=/usr/local/share/pk2:$PATH;/usr/local/bin/pk2cmd -F${DISTDIR}/tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} -Y -PPIC12F1840 -M
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=PIC12F1840
FINAL_IMAGE_NAME_MINUS_EXTENSION=${DISTDIR}/tashtrio.X.${IMAGE_TYPE}
# ------------------------------------------------------------------------------------
# Rules for buildStep: pic-as-assembler
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1731997861/tashtrio.o: ../../firmware/tashtrio.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1731997861" 
	@${RM} ${OBJECTDIR}/_ext/1731997861/tashtrio.o 
	${MP_AS} -mcpu=PIC12F1840 -c \
	-o ${OBJECTDIR}/_ext/1731997861/tashtrio.o \
	../../firmware/tashtrio.s \
	 -D__DEBUG=1  -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -v -fmax-errors=20 -mwarn=0 -xassembler-with-cpp
	
else
${OBJECTDIR}/_ext/1731997861/tashtrio.o: ../../firmware/tashtrio.s  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1731997861" 
	@${RM} ${OBJECTDIR}/_ext/1731997861/tashtrio.o 
	${MP_AS} -mcpu=PIC12F1840 -c \
	-o ${OBJECTDIR}/_ext/1731997861/tashtrio.o \
	../../firmware/tashtrio.s \
	 -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -v -fmax-errors=20 -mwarn=0 -xassembler-with-cpp
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: pic-as-linker
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_LD} -mcpu=PIC12F1840 ${OBJECTFILES_QUOTED_IF_SPACED} \
	-o ${DISTDIR}/tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} \
	 -D__DEBUG=1  -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -mcallgraph=std -Wl,-Map=${FINAL_IMAGE_NAME_MINUS_EXTENSION}.map -mno-download-hex
else
${DISTDIR}/tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_LD} -mcpu=PIC12F1840 ${OBJECTFILES_QUOTED_IF_SPACED} \
	-o ${DISTDIR}/tashtrio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} \
	 -msummary=+mem,+psect,-class,-hex,-file,-sha1,-sha256,-xml,-xmlfull -mcallgraph=std -Wl,-Map=${FINAL_IMAGE_NAME_MINUS_EXTENSION}.map -mno-download-hex
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
