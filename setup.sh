#!/bin/bash

set -e

install-scripts/create-links.sh
install-scripts/install-fonts.sh

echo ""
echo "-----------------------------------------------"
echo "INFO - If you want to set secrets use 'secrets'"
echo "-----------------------------------------------"
echo ""
echo ".------------."
echo "| SETUP DONE |"
echo ".------------."
