#!/bin/bash

green='\e[0;32m'
red='\e[0;31m'
yellow='\e[0;33m'
endColor='\e[0m'

echo -e "${red}Please enter domain name ${endColor}"
read domain

cd ~/SSL
openssl genrsa -out "$domain".key 2048
echo -e "\n"
echo -e "${green}PRIVATE KEY HAS BEEN CREATED FOR $domain \n${endColor}"

openssl req -new -key "$domain".key -out "$domain".csr

echo -e "${yellow}CSR HAS BEEN CREATED FOR $domain \n${endColor}"

cat "$domain".key "$domain".csr
