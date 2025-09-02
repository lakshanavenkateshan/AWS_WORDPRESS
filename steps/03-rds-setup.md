1-Go to RDS service in AWS Console.

2-Create a new database → Choose MySQL engine.

3-Select Free Tier or appropriate template.

4-Set DB details:

▪️DB Identifier: wordpress-db

▪️Master username: admin

▪️Master password: yourpassword

5-Networking:

▪️VPC: Select the created VPC.

▪️Subnet group: Select private subnets (create a subnet group with the two private subnets). 

▪️Security group: Attach RDS-SG.

▪️Public access: No.

6-Create database and note:

▪️Endpoint URL

▪️Username

▪️Password
