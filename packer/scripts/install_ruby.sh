#!/bin/bash
set -e
echo "================apt update ================"
apt update
echo "================sleep ================"
sleep 10
echo "================ryby install ================"
apt install -y ruby-full ruby-bundler build-essential
