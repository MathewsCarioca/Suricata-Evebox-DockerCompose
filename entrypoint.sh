#!/bin/bash

# Inicie o Suricata com as configurações do suricata.yaml
suricata -c /etc/suricata/suricata.yaml -r /var/log/suricata/pcap.pcap -v -l /var/log/suricata &
#suricata -c /etc/suricata/suricata.yaml -i eth0 &

#sleep 5 &

#suricatasc -c reload-rules -v

wait
