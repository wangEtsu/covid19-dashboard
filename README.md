# covid19-dashboard
A php CRUD applicaiton with vue.js and MySQL
## Introduction
covid19-dashboard is a web application built with php, vue.js, and MySQL. <br />
it simply fetched covid-19 cases data by local government area from DHHS Victoria, <br />
and visualize it in a piechart and a table.

## Data Source
https://www.dhhs.vic.gov.au/victorian-coronavirus-covid-19-data

## Installation
To run the app, you will need to:
1. Download and install XAMPP 
https://www.apachefriends.org/index.html

2. Download the project to /XAMPP/htdocs

3. Create a new database "covid_cases" in MySQL through http://localhost/phpmyadmin/

4. Run http://localhost/covid19-dashboard-master/insert.php to create table and load data to database

5. Run the project through http://localhost/covid19-dashboard-master/

## Deployment
This app is currently deployed on AWS EC2: http://52.54.183.123/#
To deploy this app on AWS EC2 you will need to go through following steps:

1. Create an EC2 instance with Elastic IP and HTTP access

2. Set up a LAMP environment on your EC2 instance

3. Move your source code to EC2

4. Export your db and import it to your new database on EC2

For detailed instruction please refer to my blog:
https://wangetsu1229.medium.com/everything-about-deploying-a-php-mysql-web-application-to-aws-ec2-a318d8b78594
