#!/bin/sh

tshark \
-r ${1-test.dump.pcap.gz} \
-T fields \
-e frame.time_epoch \
\
-e radiotap.channel.freq \
-e radiotap.dbm_antsignal \
-e wlan.ra \
-e radiotap.datarate \
-e wlan_radio.preamble \
-e wlan.duration \
-e wlan.flags \
\
-e wlan_radio.phy \
-e radiotap.channel.flags \
-Y "(prism.did.channel or not (wlan.fcs.status == 0)) and (wlan.fc.type_subtype==29)" |
cut -f 4- |
uniq |
sort -u |
cut -f 4 |
sort |
uniq -c |
sort -nr |
sed -r "s~^ *([0-9]+) +([0-9]+)$~- \2: **\1**~"
