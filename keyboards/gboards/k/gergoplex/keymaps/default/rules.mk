#----------------------------------------------------------------------------
# Make sure you have dfu-programmer installed!
# $ make gboards/k/gergoplex:default
# $ make gboards/k/gergoplex:default:flash
#----------------------------------------------------------------------------

# Firmware options
# MOUSEKEY_ENABLE            = yes

#Debug options
VERBOSE                    = yes
DEBUG_MATRIX_SCAN_RATE     = no
DEBUG_MATRIX               = yes
CONSOLE_ENABLE             = yes

#Combos!
VPATH                     +=  keyboards/gboards/

#Key Overrides
KEY_OVERRIDE_ENABLE = yes

# A bunch of stuff that you shouldn't touch unless you
# know what you're doing.
#
# No touchy, capiche?
SRC += matrix.c i2c_master.c
ifeq ($(strip $(DEBUG_MATRIX)), yes)
    OPT_DEFS += -DDEBUG_MATRIX
endif
