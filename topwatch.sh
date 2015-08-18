#!/bin/bash

######################################################################
# Author:  AlphaNerd80
# Date:    18/August/2015
# Description:  To assist in the monitoring of resources of ONE job using
#               top.  In the script below, <job-name> has to be changed 
#				to the actual name of the job.
#				The script should be put in cron and run as follows:
#
#               topwatch >> logfile
#
#				The columns that matter the most for memory are:
#               Col 5 (VIRT), Col 6 (RES), Col 7 (%CPU) and Col 8 (%MEM)
#
#				To add to cron: http://www.cyberciti.biz/faq/how-do-i-add-jobs-to-cron-under-linux-or-unix-oses/
######################################################################


top -b -n 1 | grep --line-buffered <job-name>
exit