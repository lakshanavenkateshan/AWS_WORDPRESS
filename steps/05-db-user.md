1-SSH into EC2

2-run :

    mysql -h <RDS-ENDPOINT> -u admin -p

3-Inside MySQL:

    CREATE USER 'wpuser'@'%' IDENTIFIED BY 'StrongPass!';
    GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'%';
    FLUSH PRIVILEGES;
