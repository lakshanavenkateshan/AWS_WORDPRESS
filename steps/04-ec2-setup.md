1-Go to EC2 service in AWS Console.

2-Launch an instance:

▪️Choose Ubuntu 22.04 instance

▪️Instance type: t2.micro

▪️VPC: Select created VPC

▪️Subnet: Public subnet

▪️Security group: EC2-SG
 
▪️IAM Role: attach your S3 full access role

▪️Add storage:

▫️Root (16 GB)

▫️Extra EBS (20 GB) → will mount for /var/www/html

3-Under Advanced details → User Data, paste the script which is in the userdata.sh file in this repository:

4-Launch the instance.

5-Get the Public IPv4 DNS of EC2 and open it in the browser → WordPress should load.
