## Stop Server
## Remove all odoo files
## Remove postgresql from system

#STOP SERVER
  sudo service odoo stop
  or sudo service odoo-server stop (if odoo-server instead of odoo)
#REMOVE ALL ODOO FILES
  sudo rm -R /opt/odoo
#REMOVE CONFIG FILES
  sudo rm -f /etc/odoo.conf
  sudo rm -f /etc/odoo/odoo.conf (if any)
  sudo rm -f /etc/odoo-server.conf (if any)
  sudo update-rc.d -f odoo remove 
  sudo update-rc.d -f odoo-server remove (if odoo-server instead of odoo)
  sudo rm -f /etc/init.d/odoo (or odoo-server)
#REMOVE USER AND USER GROUP
  sudo userdel -r postgres
  sudo groupdel postgres
3REMOVE DATABASE
  sudo apt-get remove postgresql -y
  sudo apt-get --purge remove postgresql\* -y
  sudo rm -rf /etc/postgresql/
  sudo rm -rf /etc/postgresql-common/
  sudo rm -rf /var/lib/postgresql/
  
