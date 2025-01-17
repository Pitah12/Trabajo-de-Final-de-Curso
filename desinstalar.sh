# Selecciona el paquete a desinstalar.
# Servicios:
echo "1. MySQL server"
echo "2. Apache"
echo "3. DHCP"
echo "4. DNS"

# Herramientas:
echo "5. Arpspoof"
echo "6. Nmap"
echo "7. PHP"
echo "8. Desinstalar todo"

# Volver al menu.
echo "9. Volver al menu"

#variables:
desinstalar_mysql="apt remove --purge mysql-server mysql-client* mysql-common -y"
desinstalar_mysql1="apt autoclean"
desinstalar_mysql2="apt autoremove"
borrar_mysql_archivos="rm -rf /var/lib/mysql"
desinstalar_apache="apt-get --purge autoremove apache2 -y"
desinstalar_dhcp="apt-get --purge autoremove isc-dhcp-server -y"
desinstalar_dns="apt-get --purge autoremove bind9 -y"
desinstalar_arpspoof="apt-get --purge autoremove arpspoof -y"
desinstalar_nmap="apt-get --purge autoremove nmap -y"
desinstalar_php="apt-get autoremove --purge php libapache2-mod-php php-mysql -y"
borrar_php_config="rm -r /etc/php /usr/bin/php"

read -p "Seleccione una opcion: " opcion
# Si el numero es 1, se desinstala MySQL.
if [ $opcion -eq 1 ]; then
    # Desinstala MySQL.
    #Color magenta.
    echo "\e[35m Desinstalando MySQL...\e[0m"
    #Ejecutar variable desinstalar_mysql.
    $desinstalar_mysql
    $desinstalar_mysql1
    $desinstalar_mysql2
    $borrar_mysql_archivos
    ./desinstalar.sh
fi

if [ $opcion -eq 2 ]; then
    # Desinstala apache.
    #Color magenta.
    echo "\e[35m Desinstalando apache...\e[0m"
    #Ejecutar variable desinstalar_apache.
    $desinstalar_apache
    ./desinstalar.sh
fi

#Si el numero es 3, se desinstala DHCP.
if [ $opcion -eq 3 ]; then
    # Desinstala DHCP.
    #Color magenta.
    echo "\e[35m Desinstalando DHCP...\e[0m"
    #Ejecutar variable desinstalar_dhcp.
    $desinstalar_dhcp
    ./desinstalar.sh
fi

#Si el numero es 4, se desinstala DNS.
if [ $opcion -eq 4 ]; then
    # Desinstala DNS.
    #Color magenta.
    echo "\e[35m Desinstalando DNS...\e[0m"
    #Ejecutar variable desinstalar_dns.
    $desinstalar_dns
    ./desinstalar.sh
fi

#Si el numero es 5, se desinstala arpspoof.
if [ $opcion -eq 5 ]; then
    # Desinstala arpspoof.
    #Color magenta.
    echo "\e[35m Desinstalando arpspoof...\e[0m"
    #Ejecutar variable desinstalar_arpspoof.
    $desinstalar_arpspoof
    ./desinstalar.sh
fi

#Si el numero es 6, se desinstala Nmap.
if [ $opcion -eq 6 ]; then
    # Desinstala Nmap.
    #Color magenta.
    echo "\e[35m Desinstalando Nmap...\e[0m"
    #Ejecutar variable desinstalar_nmap.
    $desinstalar_nmap
    ./desinstalar.sh
fi

#Si el numero es 7, se desinstala PHP.
#Se instaló apt-get install php libapache2-mod-php php-mysql -y
if [ $opcion -eq 7 ]; then
    # Desinstala PHP.
    #Color magenta.
    echo "\e[35m Desinstalando PHP...\e[0m"
    #Ejecutar variable desinstalar_php.
    $desinstalar_php
    #Ejecutar variable borrar_php_config.
    $borrar_php_config
    ./desinstalar.sh
fi

#8. Desinstalar todo.
if [ $opcion -eq 8 ]; then
    # Desinstala todo.
    #Color amarillo.
    echo -e "\e[31m"
    read -p "Esta seguro de desinstalar todo? (s/n): " respuesta
    echo -e "\e[0m"
    if [ $respuesta = "s" ]; then
        # Desinstala MySQL.
        #Color magenta.
        echo -e "\e[35m Desinstalando MySQL...\e[0m"
        #Ejecutar variable desinstalar_mysql.
        $desinstalar_mysql
        $desinstalar_mysql1
        $desinstalar_mysql2
        $desinstalar_mysql_archivos
        # Desinstala apache.
        #Color magenta.
        echo -e "\e[35m Desinstalando apache...\e[0m"
        #Ejecutar variable desinstalar_apache.
        $desinstalar_apache
        # Desinstala DHCP.
        #Color magenta.
        echo -e "\e[35m Desinstalando DHCP...\e[0m"
        #Ejecutar variable desinstalar_dhcp.
        $desinstalar_dhcp
        # Desinstala DNS.
        #Color magenta.
        echo -e "\e[35m Desinstalando DNS...\e[0m"
        #Ejecutar variable desinstalar_dns.
        $desinstalar_dns
        # Desinstala arpspoof.
        #Color magenta.
        echo -e "\e[35m Desinstalando arpspoof...\e[0m"
        #Ejecutar variable desinstalar_arpspoof.
        $desinstalar_arpspoof
        # Desinstala Nmap.
        #Color magenta.
        echo -e "\e[35m Desinstalando Nmap...\e[0m"
        #Ejecutar variable desinstalar_nmap.
        $desinstalar_nmap
        # Desinstala PHP.
        #Color magenta.
        echo -e "\e[35m Desinstalando PHP...\e[0m"
        #Ejecutar variable desinstalar_php.
        $desinstalar_php
        $borrar_php_config
        ./desinstalar.sh
    fi
fi

if [ $opcion -eq 9 ]; then
    # Volver al menu.
    ./install.sh
fi
