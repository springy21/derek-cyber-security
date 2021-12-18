#!/bin/bash

#Update all installed packages
apt update -y

#Install New packages and Upgrade the System
apt full-upgrade -y 

#Remove unnecessary pacakages and their associated configurations
apt autoremove --purge -y


