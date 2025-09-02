1-Go to VPC service in AWS Console.

2-Create a new VPC with IPv4 CIDR (example: 10.0.0.0/16).

3-Create two subnets:

▪️Public subnet (example: 10.0.1.0/24)

▪️Private subnet (example: 10.0.2.0/24)

4-Create an Internet Gateway and attach it to the VPC.

5-Create a Route Table for the public subnet:

▪️Add route: 0.0.0.0/0 → Internet Gateway.

▪️Associate the public subnet with this route table.

6-Create a Route Table for the private subnet (no internet access by default).
