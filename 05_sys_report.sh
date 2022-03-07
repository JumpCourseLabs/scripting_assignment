#!/bin/sh
# Generates a txt file with a system report

# System Report
greentext="\033[32m"
bold="\033[1m"
normal="\033[0m"
freemem=$(free -m | awk ' NR == 2 {print $3}')
logdate=$(date +"%Y%m%d")
ipaddress=$(ip a | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | awk 'NR == 1 {print $0}')
logfile=report_"$logdate".log

echo -e $bold"Quick system report for "$greentext"$HOSTNAME"$normal
printf "\tHostName:\t%s\n" $HOSTNAME
printf "\tSystem IP Addresses:\t%s\n" $ipaddress
printf "\tFree memory:\t%s\n" $freemem
printf "\tNumber of CPU Cores: \t%s\n" $(nproc)
printf "\tGenerated on:\t%s\n" $(date +"%m/%d/%y")
echo -e $greentext"A summary of this info has been saved to $logfile"$normal

cat <<-EOF >$logfile

EOF

printf "\tGenerated on:\t%s\n" $(date +"%m/%d/%y") >>$logfile

printf "\tHostName:\t%s\n" $HOSTNAME >>$logfile
printf "\tSystem IP Addresses:\t%s\n" $ipaddress >>$logfile
printf "\tFree memory:\t%s\n" $freemem >>$logfile
printf "\tNumber of CPU Cores: \t%s\n" $(nproc) >>$logfile
printf "\tGenerated on:\t%s\n" $(date +"%m/%d/%y") >>$logfile
