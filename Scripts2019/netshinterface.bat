@echo off
netsh interface ipv4 show address | find "Direcci"
netsh interface ipv4 set address name="ethernet0" source=static 192.168.248.111 255.255.255.0


rem netsh interface ipv4 set address name="ethernet0" source=dhcp
netsh interface ipv4 show address | find "Direcci"