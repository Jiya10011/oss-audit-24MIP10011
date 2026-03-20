#!/bin/bash
PACKAGE="git"
echo "=============================================="
echo "        FOSS PACKAGE INSPECTOR               "
echo "=============================================="
echo ""
if command -v $PACKAGE &>/dev/null; then
    echo "  [FOUND] $PACKAGE is installed on this system."
    echo ""
    VERSION=$(git --version | awk '{print $3}')
    LOCATION=$(which git)
    echo "  Version  : $VERSION"
    echo "  Location : $LOCATION"
    echo "  License  : GNU General Public License v2 (GPL v2)"
else
    echo "  [NOT FOUND] $PACKAGE is NOT installed on this system."
    exit 1
fi
echo ""
echo "----------------------------------------------"
echo "  Open Source Philosophy Notes:"
echo "----------------------------------------------"
case $PACKAGE in
    git)
        echo "  Git: Born from frustration with proprietary tools."
        echo "  Linus Torvalds built Git in 2005 in just 10 days"
        echo "  after BitKeeper revoked its free license for Linux devs."
        echo "  Git proved that the community could build better tools"
        echo "  than corporations -- freely, and for everyone."
        ;;
    httpd|apache2)
        echo "  Apache: The web server that built the open internet."
        ;;
    mysql)
        echo "  MySQL: Open source at the heart of millions of apps."
        ;;
    vlc)
        echo "  VLC: Built by students in Paris who just wanted to stream video freely."
        ;;
    python3|python)
        echo "  Python: A language shaped entirely by its community."
        ;;
    *)
        echo "  $PACKAGE: An open source tool contributing to the free software ecosystem."
        ;;
esac
echo ""
echo "=============================================="
