#!/bin/bash

echo "START TIME:$(date)" > ~/Documents/Projects/table_loader.logs

touch ~/Documents/Projects/online_retail_without_password.csv

csvcut -c 1-12,14 ~/Documents/Projects/Online_Retail_with_fake_data.csv > ~/Documents/Projects/online_retail_without_password.csv
echo "password removed successfully" >> ~/Documents/Projects/table_loader.logs


psql -h 127.0.0.1 -U postgres -d retailDB -c "\\copy retail_staging from ~/Documents/Projects/online_retail_without_password.csv WITH CSV HEADER DELIMITER ','"\
	 >> ~/Documents/Projects/table_loader.logs

echo "retail_staging table loaded successfully at $(date)" >> ~/Documents/Projects/table_loader.logs

psql -h 127.0.0.1 -U postgres -d retailDB -c \
	"insert into customer_dim (customer_id, first_name, last_name, phone, email, address, country)\
		(select r.customerid, r.firstname, r.lastname, r.phone, r.email, r.address, r.country from public.retail_staging as r)" \
	>>~/Documents/Projects/table_loader.logs

echo "customer_dim table loaded successfully :$(date)" >> ~/Documents/Projects/table_loader.logs


psql -h 127.0.0.1 -U postgres -d retailDB -c \
     "insert into stock_dim (stock_id, description)\
	 (select r.stockcode, r.description from public.retail_staging as r)"\
  >>~/Documents/Projects/table_loader.logs

