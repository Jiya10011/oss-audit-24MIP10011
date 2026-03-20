#!/bin/bash
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "=============================================="
echo "        DISK AND PERMISSION AUDITOR          "
echo "=============================================="
echo ""
printf "  %-15s %-25s %-10s\n" "Directory" "Permissions/Owner/Group" "Size"
echo "  -------------------------------------------------------"
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        printf "  %-15s %-25s %-10s\n" "$DIR" "$PERMS" "$SIZE"
    else
        printf "  %-15s %s\n" "$DIR" "[ does not exist on this system ]"
    fi
done
echo ""
echo "----------------------------------------------"
echo "  Git Config Directory Check:"
echo "----------------------------------------------"
GIT_CONFIG_DIRS=("/etc/gitconfig" "$HOME/.gitconfig" "$HOME/.git")
for GDIR in "${GIT_CONFIG_DIRS[@]}"; do
    if [ -e "$GDIR" ]; then
        GPERMS=$(ls -ld "$GDIR" | awk '{print $1, $3, $4}')
        echo "  Found: $GDIR"
        echo "  Permissions: $GPERMS"
    else
        echo "  Not found: $GDIR (may not be configured yet)"
    fi
done
echo ""
echo "=============================================="
echo "  Why permissions matter in open source:"
echo "  Config files with wrong permissions can"
echo "  expose credentials or allow tampering."
echo "=============================================="
