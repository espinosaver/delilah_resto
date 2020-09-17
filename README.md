# Delilha Restó

Delilah Restó is a restaurant web application. This project contains the backend component of the system, which in general is an product catalog and order manager.

## Installation

### HTTP Server and Database

The Delilah Restó system runs with a MySQL database, so the MySQL Database engine must be installed.

1. Install XAMMP
2. Start both Apache and MySQL
![alt text](https://github.com/espinosaver/delilah_resto/blob/master/attachments/readme/Capture1.png)
3. Open the MySQL Admin
![alt text](https://github.com/espinosaver/delilah_resto/blob/master/attachments/readme/Capture2.png)
4. Create a new database

![alt text](https://github.com/espinosaver/delilah_resto/blob/master/attachments/readme/Capture3.png)
5. Name the new database as “delilah_resto” and click on create
![alt text](https://github.com/espinosaver/delilah_resto/blob/master/attachments/readme/Capture4.png)
6. Click on “import”
![alt text](https://github.com/espinosaver/delilah_resto/blob/master/attachments/readme/Capture5.png)
7. Click on select
![alt text](https://github.com/espinosaver/delilah_resto/blob/master/attachments/readme/Capture6.png)
8. Select the “delilah_resto.sql” file attached in the project folder
![alt text](https://github.com/espinosaver/delilah_resto/blob/master/attachments/readme/Capture7.png)
9. Click on “Go”
![alt text](https://github.com/espinosaver/delilah_resto/blob/master/attachments/readme/Capture8.png)
10. The following message should appear as well as the database structure
![alt text](https://github.com/espinosaver/delilah_resto/blob/master/attachments/readme/Capture9.png)

### Express Server

1. Install nodeJS
2. Open a CMD
3. Run the following command. Ensure the path in the command matched the absolute path of the routes folder in your pc.

```bash
C:> cd C:\Users\Public\Documents\delilah_resto\routes
```
4. Run the following command “node index.js”

```bash
C:\Users\Public\Documents\delilah_resto\routes> node index.js 
```
5. The following message should appear

![alt text](https://github.com/espinosaver/delilah_resto/blob/master/attachments/readme/Capture10.png)

## Usage

In order to know about the use of this API please refer to the .yaml file to see the swagger OpenAPI API file description.


## Testing

Use Postman to test all the endpoints available in the API. All requests have been tested previously so there is a request Postman collection available inside the project folder inside the “attachments” folder, “Delilah Restó.postman_collection.json”.
