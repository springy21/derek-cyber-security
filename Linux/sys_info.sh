#!/usr/bin/env bash
echo "A Quick system Title"
date
echo "Machine Type Info:"
echo $MACHTYPE
echo -e "Uname Info: $(uname -a) \n"
echo -e "IP Info: $(ip addr | head -9 | tail -1) \n"
echo "Hostname: $(hostname -s)"

