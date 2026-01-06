#!/bin/bash
# DNS lookup test

read -p "Enter domain name: " DOMAIN

getent hosts "$DOMAIN"
