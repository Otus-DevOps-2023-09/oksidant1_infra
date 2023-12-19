#!/bin/bash
set -e
echo "================apt update ================"
apt update
echo "================sleep ================"
sleep 10
echo "============= install mongodb ================="
apt install -y mongodb
