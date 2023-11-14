#!/bin/bash

yc compute instance create \
  --name reddit-full \
  --hostname reddit-full \
  --memory=4 \
  --create-boot-disk image-folder-id=b1g69ohdcnpa8ng4u1ff,image-family=reddit-full,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4,nat-address=158.160.125.156 \
  --zone ru-central1-a \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/appuser.pub
