#!/bin/bash

apt update -y --allow-downgrades
apt dist-upgrade -y --allow-downgrades
apt upgrade -y --allow-downgrades
apt autoremove

flatpak update