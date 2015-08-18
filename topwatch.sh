#!/bin/bash

######################################################################
# Author:  AlphaNerd80
# Date:    18/August/2015
# Description:  To assist in the monitoring of resources of ONE job using
#               top.  In the script below, <job-name> has to be changed 
#				to the actual name of the job.
#				The script should be put in cron and run as follows:
#               topwatch
#
######################################################################


top -b -n 1 | grep --line-buffered crond
exit