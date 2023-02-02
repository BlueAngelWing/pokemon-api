#!/bin/bash
echo "Introduzca el nombre de un pokemon:"
read name 
api_url="https://pokeapi.co/api/v2/pokemon/" 
api_url+=$name
id=$(curl -s $api_url | jq -r '.id')
name=$(curl -s $api_url | jq -r '.name')
weight=$(curl -s $api_url | jq -r '.weight')
height=$(curl -s $api_url | jq -r '.height')
order=$(curl -s $api_url | jq -r '.order')
printf "\nid:${id}\n\n"
printf "\nname:${name}\n\n"
printf "\nweight:${weight}\n\n"
printf "\nheight:${height}\n\n"
printf "\norder:${order}\n\n"

