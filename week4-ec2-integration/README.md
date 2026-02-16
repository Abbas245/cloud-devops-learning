# Week 4 – AWS EC2 Integration (Storage, Persistence, and Elastic IP)

This project demonstrates hands-on configuration of an AWS EC2 instance, attaching and managing persistent storage using EBS, verifying real data persistence across instance restarts, configuring automatic disk mounting using fstab, and ensuring stable public connectivity using an Elastic IP. The goal of this exercise was to understand how real cloud servers behave rather than just following a guided lab.

A new Ubuntu EC2 instance named w4-int was launched and accessed securely using the SSH key pair int-key. After confirming connectivity, a new EBS volume was created in the same availability zone and attached to the instance. Inside the server, available disks were verified using the lsblk command, and the newly attached disk appeared as /dev/nvme1n1.

Before a disk can store files, it must contain a filesystem. The volume was formatted with an ext4 filesystem using the following command:

sudo mkfs.ext4 /dev/nvme1n1

A mount directory was created and the volume was mounted:

sudo mkdir /data
sudo mount /dev/nvme1n1 /data

Disk usage and mount status were verified using:

df -h

To confirm persistence, a test file was created on the mounted disk:

echo "integration test" | sudo tee /data/test.txt

The EC2 instance was then stopped and started from the AWS console. After reconnecting via SSH, the file still existed, proving that EBS storage persists independently of the EC2 instance lifecycle.

Mounting a disk manually does not survive reboot, so automatic mounting was configured. The UUID of the disk was retrieved using:

sudo blkid

The disk was then configured in /etc/fstab using the following entry:

UUID=a3676eaf-55fb-49d6-9ce8-7ac0a8b43eb9  /data  ext4  defaults,nofail  0  2

The configuration was tested safely without rebooting:

sudo mount -a
sudo systemctl daemon-reload

After another full stop/start cycle, the system was checked using:

df -h

The /data directory mounted automatically and the test file remained intact, confirming correct persistence configuration.

Networking behavior was also tested. Initially, the public IP changed after a stop/start cycle, demonstrating the behavior of dynamic public IP addresses in AWS. An Elastic IP was then allocated and associated with the instance. After another stop/start cycle, the public IP remained unchanged, confirming correct Elastic IP configuration and stable connectivity. SSH access worked normally using the Elastic IP.

During this project, several important infrastructure concepts were reinforced. A disk must be formatted before it can store files. A filesystem exists independently from a mount point, and mounting is temporary unless configured in fstab. UUIDs are safer than device names because device paths may change after reboot. Elastic IP addresses provide stable endpoints for servers. SSH host key warnings occur when an IP address is reused by a different machine and the known_hosts entry no longer matches.

Commands used during this project included:

lsblk 
sudo mkfs.ext4 /dev/nvme1n1 
sudo mkdir /data 
sudo mount /dev/nvme1n1 /data 
df -h 
sudo blkid 
sudo nano /etc/fstab
sudo mount -a 
sudo systemctl daemon-reload 
cat /data/test.txt 

All validation steps were successful. The volume remained attached after reboot, data persisted correctly, the filesystem mounted automatically, the Elastic IP remained stable, and SSH connectivity worked reliably after restart. This project demonstrates practical understanding of Linux storage management, AWS EC2 lifecycle behavior, and foundational cloud infrastructure skills required for entry-level Cloud Engineer and DevOps roles.

