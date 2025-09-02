1-Go to EC2 Security Groups and create two groups:

▪️EC2-SG (for WordPress server):

 ▪️Inbound rules:

  ▪️HTTP (80) → 0.0.0.0/0

  ▪️HTTPS (443) → 0.0.0.0/0

  ▪️SSH (22) → Your IP only

 ▪️Outbound: Allow all traffic

▪️RDS-SG (for MySQL database):

 ▪️Inbound rules:

  ▪️MySQL/Aurora (3306) → Source: EC2-SG

 ▪️Outbound: Allow all traffic
