#!/bin/bash

read -p "User name: " user
docker exec -ti squid htpasswd /etc/squid/passwd $user
