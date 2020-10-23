########################################################################
#
# Main driver for NOAA R&D computing environment support
#
########################################################################

ifneq (,$(and $(wildcard /scratch),$(wildcard /data/prod)))
  NEMS_COMPILER?=intel
  $(call add_build_env,s4.$(NEMS_COMPILER),env/s4/s4.$(NEMS_COMPILER).mk)
endif
