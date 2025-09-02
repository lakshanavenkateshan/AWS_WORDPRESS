# AWS_WORDPRESS 
## WordPress on AWS (EC2 + RDS + S3 + EBS)

This project hosts a WordPress website on AWS using the following services:
- **EC2** (public subnet) → runs Apache + PHP
- **RDS (MySQL)** (private subnet) → stores WordPress DB
- **EBS** → persistent storage for WordPress files
- **S3** → stores media uploads
- **IAM Role** → allows EC2 to access S3
- **User Data** → installs WordPress automatically

---

## 📂 Project Structure
- `user-data.sh` → Script used in EC2 User Data to auto-install WordPress
- `steps/` → Step-by-step setup guide
- `images/` → Screenshots of setup and outputs
- `architecture.png` → Network architecture diagram (VPC, Subnets, etc.)

---

## 🚀 Steps to Recreate
1. Create VPC, subnets (public + private), and Internet Gateway.
2. Configure Security Groups:
   - EC2 SG → HTTP(80), SSH(22 from your IP)
   - RDS SG → MySQL(3306) only from EC2 SG
3. Launch RDS (MySQL) in private subnet.
4. Launch EC2 in public subnet with `user-data.sh`.
5. Attach IAM Role with S3 full access to EC2.
6. Access WordPress via EC2 public IP.

---

## 📸 Screenshots
See the `images/` folder for AWS console screenshots and WordPress setup page.
