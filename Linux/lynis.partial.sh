#!/bin/bash

# Daily scan  of malware, authenication, networking, storage, adn filesystems
sudo lynis audit --tests-from-group malware,networking,storage,filesystems >> /tmp/lynis.partial_scan.log

