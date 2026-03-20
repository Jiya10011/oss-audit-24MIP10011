#!/bin/bash
STUDENT_NAME="Jiya"
ROLL_NO="24MIP10011"
SOFTWARE_CHOICE="Git"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%d %B %Y, %H:%M')
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
echo "=============================================="
echo "      OPEN SOURCE AUDIT — SYSTEM REPORT      "
echo "=============================================="
echo "  Student  : $STUDENT_NAME ($ROLL_NO)"
echo "  Software : $SOFTWARE_CHOICE"
echo "----------------------------------------------"
echo "  Distro   : $DISTRO"
echo "  Kernel   : $KERNEL"
echo "  User     : $USER_NAME"
echo "  Home Dir : $HOME_DIR"
echo "  Uptime   : $UPTIME"
echo "  Date     : $CURRENT_DATE"
echo "----------------------------------------------"
echo "  OS License: GNU General Public License v2 (GPL v2)"
echo "  This means: anyone can use, study, modify, and share this OS."
echo "=============================================="
echo " Audit subject: Git — also licensed under GPL v2"
echo "=============================================="
