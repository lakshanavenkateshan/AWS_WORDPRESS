1-Go to EC2 service in AWS Console.

2-Launch an instance:

▪️Amazon Linux 2 AMI (Free Tier)

▪️Instance type: t2.micro

▪️VPC: Select created VPC

▪️Subnet: Public subnet

▪️Security group: EC2-SG

3-Under Advanced details → User Data, paste the script which is in the userdata.sh file in this repository:

4-Launch the instance.

5-Get the Public IPv4 DNS of EC2 and open it in the browser → WordPress should load.
