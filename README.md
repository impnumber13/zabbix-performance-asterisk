Installation
------------
To install, copy `userparameter_asterisk.conf` to `/etc/zabbix/zabbix_agentd.d/userparameter_asterisk.conf` and `asterisk-trunk-status.sh` to `/etc/zabbix/scripts/asterisk-trunk-status.sh`.
Do not forget to mark it executable.
```bash
# diskstats user parameters config
sudo mkdir -p /etc/zabbix/zabbix_agentd.d/
sudo mkdir -p /etc/zabbix/scripts/
sudo curl https://raw.githubusercontent.com/impnumber13/zabbix-performance-asterisk/master/userparameter_asterisk.conf -o /etc/zabbix/zabbix_agentd.d/userparameter_asterisk.conf

# low level discovery script
sudo curl https://raw.githubusercontent.com/impnumber13/zabbix-performance-asterisk/master/scripts/asterisk-trunk-status.sh -o /etc/zabbix/scripts/asterisk-trunk-status.sh
sudo chmod +x /etc/zabbix/scripts/asterisk-trunk-status.sh
```

After that restart zabbix-agent
```sudo systemctl restart zabbix-agent```
