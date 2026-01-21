# Format and mount all extra disks
for i in b c d e f; do
  DISK="/dev/sd${i}"
  if [ -b "$DISK" ]; then
    mkfs.xfs -f $DISK
  fi
done

mkdir -p /u01 /oradata /oraredo /orabackup /tmpmnt

echo "/dev/sdb /u01 xfs defaults 0 0" >> /etc/fstab
echo "/dev/sdc /oradata xfs defaults 0 0" >> /etc/fstab
echo "/dev/sdd /oraredo xfs defaults 0 0" >> /etc/fstab
echo "/dev/sde /orabackup xfs defaults 0 0" >> /etc/fstab
echo "/dev/sdf /tmpmnt xfs defaults 0 0" >> /etc/fstab

mount -a

# Remount /tmp with bind (avoid stopping auditd)
if [ -d /tmpmnt ] && mountpoint -q /tmpmnt; then
  rsync -aXS /tmp/ /tmpmnt/
  mount --bind /tmpmnt /tmp
  chmod 1777 /tmp
fi

# Install base packages
dnf update
dnf install -y ansible-core