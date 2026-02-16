# Week 4 – AWS EC2 Integration

## Objectives
- Launch EC2 instance
- Attach and mount EBS volume
- Test persistence
- Configure automatic mount using fstab
- Allocate and associate Elastic IP

## Commands Used
lsblk
mkfs.ext4
mount
df -h
blkid
nano /etc/fstab
mount -a

## What I Learned
1) Architecture / Resources

Instance name: w4-int

OS: Ubuntu

Key pair: int-key

Storage: EBS volume attached as /dev/nvme1n1 mounted at /data

Elastic IP: associated (public IP persists after stop/start)

2) What you validated (with results)

Public IP changed without Elastic IP: Yes

Elastic IP stayed same after stop/start: Yes

EBS data persisted after stop/start: Yes

/data auto-mounted after restart via /etc/fstab: Yes

3) Commands (copy/paste list)

Include:

lsblk, df -h, sudo mkfs.ext4 /dev/nvme1n1, sudo mount ..., sudo blkid

/etc/fstab line used (UUID-based)

sudo mount -a, sudo systemctl daemon-reload

4) Key learning (tight, factual)

Examples:

Difference between disk exists vs filesystem exists vs mount exists

Why UUID is used instead of device name

Why Elastic IP is needed for stable endpoints

Why SSH host key warning happens (known_hosts)
