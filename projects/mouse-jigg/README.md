# 🛠️ Manual and Automated Setup for Static Website on EC2

This project shows how to manually and automatically deploy a static website on an AWS EC2 instance using Apache.

## 🔧 Technologies Used
- AWS EC2
- Apache HTTP Server
- Bash Scripting
- SCP for file transfer

## 📘 Manual Deployment Steps
1. Launch EC2 instance
2. SSH into instance and install Apache
3. Upload `website.zip`
4. Unzip files and move content to `/var/www/html`
5. Set permissions and restart Apache

## ⚙️ Automation Script
The script `setup_server.sh` performs all steps automatically.

## 🚀 Usage

```bash
scp -i website.pem website.zip ec2-user@<IP>:/home/ec2-user
scp -i website.pem setup_server.sh ec2-user@<IP>:/home/ec2-user

# On the server:
chmod +x setup_server.sh
./setup_server.sh
