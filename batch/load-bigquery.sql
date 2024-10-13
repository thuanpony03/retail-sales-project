CREATE OR REPLACE EXTERNAL TABLE `retail-sales-437510.retail_sales_dataset.fact_table`
  OPTIONS (
    format = 'PARQUET',
    uris = ['gs://retail_sales_bucket/star-schema/fact_table/*']
  );

CREATE OR REPLACE EXTERNAL TABLE `retail-sales-437510.retail_sales_dataset.date`
  OPTIONS (
    format = 'PARQUET',
    uris = ['gs://retail_sales_bucket/star-schema/date/*']
  );

CREATE OR REPLACE EXTERNAL TABLE `retail-sales-437510.retail_sales_dataset.item`
  OPTIONS (
    format = 'PARQUET',
    uris = ['gs://retail_sales_bucket/star-schema/item/*']
  );

CREATE OR REPLACE EXTERNAL TABLE `retail-sales-437510.retail_sales_dataset.supplier`
  OPTIONS (
    format = 'PARQUET',
    uris = ['gs://retail_sales_bucket/star-schema/supplier/*']
  );


SELECT * FROM retail-sales-437510.retail_sales_dataset.fact_table
limit 10;
SELECT * FROM retail-sales-437510.retail_sales_dataset.item
limit 10;
SELECT * FROM retail-sales-437510.retail_sales_dataset.date
limit 10;
SELECT * FROM retail-sales-437510.retail_sales_dataset.supplier
limit 10;

CREATE OR REPLACE TABLE retail-sales-437510.retail_sales_dataset.fact_table_np AS
SELECT * FROM retail-sales-437510.retail_sales_dataset.fact_table;

CREATE OR REPLACE TABLE retail-sales-437510.retail_sales_dataset.item_np AS
SELECT * FROM retail-sales-437510.retail_sales_dataset.item;

CREATE OR REPLACE TABLE retail-sales-437510.retail_sales_dataset.date_np AS
SELECT * FROM retail-sales-437510.retail_sales_dataset.date;

CREATE OR REPLACE TABLE retail-sales-437510.retail_sales_dataset.supplier_np AS
SELECT * FROM retail-sales-437510.retail_sales_dataset.supplier;