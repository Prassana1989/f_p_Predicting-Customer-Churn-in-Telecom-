# To Create Schema
create schema customer_churn_telecom;
select customer_churn_telecom;

# uploaded the given data set as itis
SELECT count(*) FROM customer_churn_telecom.customer_churn; # 4835 rows
SELECT * FROM customer_churn_telecom.customer_churn;

#7043 rows (this is achived by replacing empty cells with 0 in Avg Monthly Long Distance Charges & Avg Monthly GB Download)
SELECT count(*) FROM customer_churn_telecom.customer_churn_edited;  

# Column count 38
SELECT COUNT(*) AS number_of_columns FROM INFORMATION_SCHEMA.COLUMNS WHERE table_schema = 'customer_churn_telecom' AND table_name = 'customer_churn_edited';

# Check Duplication
SELECT customer_ID, COUNT(*) AS duplicate_count FROM customer_churn_edited GROUP BY Customer_ID
HAVING COUNT(*) > 1;

# To check data type of columns
DESCRIBE customer_churn_telecom.customer_churn_edited;


# To view table
SELECT * FROM customer_churn_telecom.customer_churn_edited;

# 1. DATA CLEANING - CHANGE COLUMNS HEADING NAMES (REPLACING 'SPACE' with '____'), (consist of 7043 rows and 38 columns)

ALTER TABLE customer_churn_edited CHANGE `Customer ID` `Customer_ID` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Number of Dependents` `Number_of_Dependents` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Zip Code` `Zip_Code` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Number of Referrals` `Number_of_Referrals` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Tenure in Months` `Tenure_in_Months` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Phone Service` `Phone_Service` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Avg Monthly Long Distance Charges` `Avg_Monthly_Long_Distance_Charges` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Multiple Lines` `Multiple_Lines` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Internet Service` `Internet_Service` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Internet Type` `Internet_Type` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Avg Monthly GB Download` `Avg_Monthly_GB_Download` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Online Security` `Online_Security` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Online Backup` `Online_Backup` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Device Protection Plan` `Device_Protection_Plan` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Premium Tech Support` `Premium_Tech_Support` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Streaming TV` `Streaming_TV` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Streaming Movies` `Streaming_Movies` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Streaming Music` `Streaming_Music` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Unlimited Data` `Unlimited_Data` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Paperless Billing` `Paperless_Billing` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Payment Method` `Payment_Method` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Monthly Charge` `Monthly_Charge` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Total Charges` `Total_Charges` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Total Refunds` `Total_Refunds` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Total Extra Data Charges` `Total_Extra_Data_Charges` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Total Long Distance Charges` `Total_Long_Distance_Charges` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Total Revenue` `Total_Revenue` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Customer Status` `Customer_Status` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Churn Category` `Churn_Category` VARCHAR(50);
ALTER TABLE customer_churn_edited CHANGE `Churn Reason` `Churn_Reason` VARCHAR(50);

# 2. DATA CLEANNG IDENTIFYING EMPTY CELLS EACH COLUMN WISE

SELECT 'Customer_ID' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_ID IS NULL OR Customer_ID = ''
UNION ALL
SELECT 'Gender' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Gender IS NULL OR Gender = ''
UNION ALL
SELECT 'Age' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Age IS NULL OR Age = ''
UNION ALL
SELECT 'Married' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Married IS NULL OR Married = ''
UNION ALL
SELECT 'Number_of_Dependents' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Number_of_Dependents IS NULL OR Number_of_Dependents = ''
UNION ALL
SELECT 'City' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE City IS NULL OR City = ''
UNION ALL
SELECT 'Zip_Code' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Zip_Code IS NULL OR Zip_Code = ''
UNION ALL
SELECT 'Latitude' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Latitude IS NULL OR Latitude = ''
UNION ALL
SELECT 'Longitude' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Longitude IS NULL OR Longitude = ''
UNION ALL
SELECT 'Number_of_Referrals' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Number_of_Referrals IS NULL OR Number_of_Referrals = ''
UNION ALL
SELECT 'Tenure_in_Months' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Tenure_in_Months IS NULL OR Tenure_in_Months = ''
UNION ALL
SELECT 'Offer' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Offer IS NULL OR Offer = ''
UNION ALL
SELECT 'Phone_Service' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Phone_Service IS NULL OR Phone_Service = ''
UNION ALL
SELECT 'Avg_Monthly_Long_Distance_Charges' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Avg_Monthly_Long_Distance_Charges IS NULL OR Avg_Monthly_Long_Distance_Charges = ''
UNION ALL
SELECT 'Multiple_Lines' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Multiple_Lines IS NULL OR Multiple_Lines = ''
UNION ALL
SELECT 'Internet_Service' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Internet_Service IS NULL OR Internet_Service = ''
UNION ALL
SELECT 'Internet_Type' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Internet_Type IS NULL OR Internet_Type = ''
UNION ALL
SELECT 'Avg_Monthly_GB_Download' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Avg_Monthly_GB_Download IS NULL OR Avg_Monthly_GB_Download = ''
UNION ALL
SELECT 'Online_Security' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Online_Security IS NULL OR Online_Security = ''
UNION ALL
SELECT 'Online_Backup' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Online_Backup IS NULL OR Online_Backup = ''
UNION ALL
SELECT 'Device_Protection_Plan' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Device_Protection_Plan IS NULL OR Device_Protection_Plan = ''
UNION ALL
SELECT 'Premium_Tech_Support' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Premium_Tech_Support IS NULL OR Premium_Tech_Support = ''
UNION ALL
SELECT 'Streaming_TV' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Streaming_TV IS NULL OR Streaming_TV = ''
UNION ALL
SELECT 'Streaming_Movies' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Streaming_Movies IS NULL OR Streaming_Movies = ''
UNION ALL
SELECT 'Streaming_Music' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Streaming_Music IS NULL OR Streaming_Music = ''
UNION ALL
SELECT 'Unlimited_Data' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Unlimited_Data IS NULL OR Unlimited_Data = ''
UNION ALL
SELECT 'Contract' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Contract IS NULL OR Contract = ''
UNION ALL
SELECT 'Paperless_Billing' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Paperless_Billing IS NULL OR Paperless_Billing = ''
UNION ALL
SELECT 'Payment_Method' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Payment_Method IS NULL OR Payment_Method = ''
UNION ALL
SELECT 'Monthly_Charge' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Monthly_Charge IS NULL OR Monthly_Charge = ''
UNION ALL
SELECT 'Total_Charges' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Total_Charges IS NULL OR Total_Charges = ''
UNION ALL
SELECT 'Total_Refunds' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Total_Refunds IS NULL OR Total_Refunds = ''
UNION ALL
SELECT 'Total_Extra_Data_Charges' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Total_Extra_Data_Charges IS NULL OR Total_Extra_Data_Charges = ''
UNION ALL
SELECT 'Total_Long_Distance_Charges' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Total_Long_Distance_Charges IS NULL OR Total_Long_Distance_Charges = ''
UNION ALL
SELECT 'Total_Revenue' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Total_Revenue IS NULL OR Total_Revenue = ''
UNION ALL
SELECT 'Customer_Status' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status IS NULL OR Customer_Status = ''
UNION ALL
SELECT 'Churn_Category' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Churn_Category IS NULL OR Churn_Category = ''
UNION ALL
SELECT 'Churn_Reason' AS column_name, COUNT(*) AS empty_cells
FROM customer_churn_telecom.customer_churn_edited
WHERE Churn_Reason IS NULL OR Churn_Reason = '';

# 3. Update empty cells with null (where 12 columns with empty cells are of varchar data type)
# 3. (i) to view its data type
SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'customer_churn_telecom'
  AND TABLE_NAME = 'customer_churn_edited'
  AND COLUMN_NAME IN (
      'Multiple_Lines', 'Internet_Type', 'Online_Security', 'Online_Backup', 
      'Device_Protection_Plan', 'Premium_Tech_Support', 'Streaming_TV', 
      'Streaming_Movies', 'Streaming_Music', 'Unlimited_Data', 
      'Churn_Category', 'Churn_Reason');
      
# 3. (ii) to update empty cells in each column with Null
UPDATE customer_churn_telecom.customer_churn_edited SET Multiple_Lines = 'NIL' WHERE Multiple_Lines IS NULL OR Multiple_Lines = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Internet_Type = 'NIL' WHERE Internet_Type IS NULL OR Internet_Type = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Online_Security = 'NIL' WHERE Online_Security IS NULL OR Online_Security = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Online_Backup = 'NIL' WHERE Online_Backup IS NULL OR Online_Backup = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Device_Protection_Plan = 'NIL' WHERE Device_Protection_Plan IS NULL OR Device_Protection_Plan = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Premium_Tech_Support = 'NIL' WHERE Premium_Tech_Support IS NULL OR Premium_Tech_Support = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Streaming_TV = 'NIL' WHERE Streaming_TV IS NULL OR Streaming_TV = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Streaming_Movies = 'NIL' WHERE Streaming_Movies IS NULL OR Streaming_Movies = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Streaming_Music = 'NIL' WHERE Streaming_Music IS NULL OR Streaming_Music = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Unlimited_Data = 'NIL' WHERE Unlimited_Data IS NULL OR Unlimited_Data = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Churn_Category = 'NIL' WHERE Churn_Category IS NULL OR Churn_Category = '';
UPDATE customer_churn_telecom.customer_churn_edited SET Churn_Reason = 'NIL' WHERE Churn_Reason IS NULL OR Churn_Reason = '';

# Tasks to perform: (28 questions into 7 categories )
# 1. Churn Specific Analysis (1, 16)
# a. (1)Identify the total number of customers and the churn rate 
SELECT COUNT(*) AS total_customers,
SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) AS churned_customers,
ROUND((SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS churn_rate_percentage
FROM customer_churn_telecom.customer_churn_edited;

# b. (16) Identify the customers who have churned and used the most online services
SELECT Customer_ID, Gender, Age, Contract, Customer_Status,
    (CASE WHEN Online_Security = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Online_Backup = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Device_Protection_Plan = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Premium_Tech_Support = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Streaming_TV = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Streaming_Movies = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Streaming_Music = 'Yes' THEN 1 ELSE 0 END) AS total_online_services
FROM customer_churn_telecom.customer_churn_edited WHERE Customer_Status = 'Churned' ORDER BY total_online_services DESC LIMIT 5;

# count churned customer with all 7 servies
SELECT 
    COUNT(*) AS customer_count
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status = 'Churned'
AND (
    CASE WHEN Online_Security = 'Yes' THEN 1 ELSE 0 END +
    CASE WHEN Online_Backup = 'Yes' THEN 1 ELSE 0 END +
    CASE WHEN Device_Protection_Plan = 'Yes' THEN 1 ELSE 0 END +
    CASE WHEN Premium_Tech_Support = 'Yes' THEN 1 ELSE 0 END +
    CASE WHEN Streaming_TV = 'Yes' THEN 1 ELSE 0 END +
    CASE WHEN Streaming_Movies = 'Yes' THEN 1 ELSE 0 END +
    CASE WHEN Streaming_Music = 'Yes' THEN 1 ELSE 0 END
) = (
    SELECT MAX(
        CASE WHEN Online_Security = 'Yes' THEN 1 ELSE 0 END +
        CASE WHEN Online_Backup = 'Yes' THEN 1 ELSE 0 END +
        CASE WHEN Device_Protection_Plan = 'Yes' THEN 1 ELSE 0 END +
        CASE WHEN Premium_Tech_Support = 'Yes' THEN 1 ELSE 0 END +
        CASE WHEN Streaming_TV = 'Yes' THEN 1 ELSE 0 END +
        CASE WHEN Streaming_Movies = 'Yes' THEN 1 ELSE 0 END +
        CASE WHEN Streaming_Music = 'Yes' THEN 1 ELSE 0 END
    ) 
    FROM customer_churn_telecom.customer_churn_edited WHERE Customer_Status = 'Churned'
);

# 2.	Customer Demographics and Characteristics (2,11,12,14,18,21):
# a.	(2) Find the average age of churned customers 
SELECT 
    ROUND(AVG(Age), 2) AS average_age_of_churned_customers
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status = 'Churned';

# b.	(11)  Identify the average total charges for customers grouped by gender and marital status
SELECT Gender,Married,
ROUND(AVG(Total_Charges), 2) AS average_total_charges FROM customer_churn_telecom.customer_churn_edited GROUP BY Gender, Married;
 
# c.	(12) Calculate the average monthly charges for different age groups among churned customers 
SELECT Customer_Status, CASE 
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 40 THEN '25-40'
        WHEN Age BETWEEN 41 AND 60 THEN '41-60'
        ELSE 'Above 60'
    END AS age_group, 
ROUND(AVG(Monthly_Charge), 2) AS average_monthly_charge FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status = 'Churned'GROUP BY age_group;

# d.	(14) Identify the contract types with the highest churn rate among senior citizens (age 65 and over) 
SELECT Customer_Status, Contract,
    COUNT(*) AS churned_count,
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM customer_churn_telecom.customer_churn_edited WHERE Age >= 65) * 100), 2) AS churn_rate_percentage
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status = 'Churned' AND Age >= 65
GROUP BY Contract
ORDER BY churn_rate_percentage DESC;

# e.	(18) Identify the gender distribution among customers who have churned and are on yearly contracts. 
SELECT Customer_Status, Contract, Gender, COUNT(*) AS churned_count
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status = 'Churned' AND Contract = 'One Year' GROUP BY Gender;

# f.	(21) Calculate the average monthly charges and total charges for customers who have churned, grouped by the number of dependents.
SELECT Number_of_Dependents, Customer_Status,
ROUND(AVG(Monthly_Charge), 2) AS average_monthly_charge,
ROUND(AVG(Total_Charges), 2) AS average_total_charges
FROM customer_churn_telecom.customer_churn_edited WHERE Customer_Status = 'Churned'GROUP BY Number_of_Dependents;

# 3. Contract and Service Analysis (3,5,9,10,22)
# a. (3) Discover the most common contract types among churned customers 
SELECT Contract, COUNT(*) AS churned_customer_count
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status = 'Churned'GROUP BY Contract
ORDER BY churned_customer_count DESC;

# b. (5) Create a query to identify the contract types that are most prone to churn 
SELECT Contract, COUNT(*) AS churned_customer_count,
(COUNT(*) / (SELECT COUNT(*) FROM customer_churn_telecom.customer_churn_edited WHERE Contract = c.Contract)) * 100 AS churn_rate_percentage
FROM customer_churn_telecom.customer_churn_edited AS c WHERE Customer_Status = 'Churned'
GROUP BY Contract ORDER BY churn_rate_percentage DESC;

# c. (9) Identify customers who have both online security and online backup services and have not churned 
SELECT Customer_ID, Online_Security, Online_Backup, Customer_Status
FROM customer_churn_telecom.customer_churn_edited
WHERE Online_Security = 'Yes' AND Online_Backup = 'Yes'AND Customer_Status = 'Stayed';

SELECT Customer_ID, Online_Security, Online_Backup, Customer_Status
FROM customer_churn_telecom.customer_churn_edited
WHERE Online_Security = 'Yes' AND Online_Backup = 'Yes'AND Customer_Status = 'joined';

SELECT Count(*) AS stayed_customer_count, Online_Security, Online_Backup 
FROM customer_churn_telecom.customer_churn_edited
WHERE Online_Security = 'Yes' AND Online_Backup = 'Yes'
AND Customer_Status ='stayed';

SELECT Count(*) AS Joined_customer_count, Online_Security, Online_Backup 
FROM customer_churn_telecom.customer_churn_edited
WHERE Online_Security = 'Yes' AND Online_Backup = 'Yes'
AND Customer_Status ='joined';
 
 SELECT Count(*) AS Churned_customer_count, Online_Security, Online_Backup 
FROM customer_churn_telecom.customer_churn_edited
WHERE Online_Security = 'Yes' AND Online_Backup = 'Yes'
AND Customer_Status ='churned';

# d. (10) Determine the most common combinations of services among churned customers
SELECT Online_Security, Online_Backup, Device_Protection_Plan, Premium_Tech_Support, 
COUNT(*) AS churned_customer_count
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status = 'Churned'
GROUP BY Online_Security, Online_Backup, Device_Protection_Plan, Premium_Tech_Support
ORDER BY churned_customer_count DESC; 

# e. (22) Identify the customers who have churned, and their contract duration in months 
SELECT Customer_ID, Tenure_in_Months, Customer_Status
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status = 'Churned' order by CAST(Tenure_in_Months AS SIGNED INTEGER) DESC limit 10;

 # 4. Financial Analysis (4,6,7,8,15,20,24,25,26)     
 # a. (4) Analyze the distribution of monthly charges among churned customers 
SELECT Monthly_Charge, Customer_Status, COUNT(*) AS customer_count
FROM customer_churn_telecom.customer_churn_edited WHERE Customer_Status = 'Churned'
GROUP BY Monthly_Charge ORDER BY customer_count Desc limit 10;
      
 # b. (6) Identify customers with high total charges who have
SELECT Customer_Status, Customer_ID, Total_Charges
FROM customer_churn_telecom.customer_churn_edited WHERE Customer_Status = 'Churned' 
ORDER BY Total_Charges DESC LIMIT 10;

# c. (7) Calculate the total charges distribution for churned and non-churned customers
SELECT Customer_Status, COUNT(*) AS customer_count, 
MIN(Total_Charges) AS min_total_charges, MAX(Total_Charges) AS max_total_charges, AVG(Total_Charges) AS avg_total_charges
FROM customer_churn_telecom.customer_churn_edited GROUP BY Customer_Status; 

# d. (8) Calculate the average monthly charges for different contract types among churned customers 
SELECT Contract, Customer_Status, AVG(Monthly_Charge) AS avg_monthly_charge
FROM customer_churn_telecom.customer_churn_edited WHERE Customer_Status = 'Churned' 
GROUP BY Contract order by avg_monthly_charge desc;

# e. (15) Calculate the average monthly charges for customers who have multiple lines and streaming TV 
SELECT AVG(Monthly_Charge) AS avg_monthly_charge
FROM customer_churn_telecom.customer_churn_edited
WHERE Multiple_Lines = 'Yes' AND Streaming_TV = 'Yes';

# f. (20) Find the customers who have churned and are not using online services, and their average total charges.
SELECT  Customer_Status, AVG(Total_Charges) AS avg_total_charges
FROM customer_churn_telecom.customer_churn_edited WHERE Customer_Status = 'Churned'
AND Online_Security = 'No' AND Online_Backup = 'No'
AND Device_Protection_Plan = 'No' AND Premium_Tech_Support = 'No'; 

# g. (24) Create a view to find the customers with the highest monthly charges in each contract type  
SELECT c1.Contract, c1.Customer_ID, c1.Monthly_Charge
FROM customer_churn_telecom.customer_churn_edited AS c1
JOIN (SELECT Contract, MAX(Monthly_Charge) AS Max_Charge 
FROM customer_churn_telecom.customer_churn_edited GROUP BY Contract) 
AS c2 ON c1.Contract = c2.Contract
AND c1.Monthly_Charge = c2.Max_Charge;

# h. (25) Create a view to identify customers who have churned and the average monthly charges compared to the overall average 
SELECT 'Overall Average' AS category, AVG(Monthly_Charge) AS avg_monthly_charge
FROM customer_churn_telecom.customer_churn_edited
UNION ALL SELECT 'Churned Customers Average' AS category,
AVG(Monthly_Charge) AS avg_monthly_charge
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status = 'Churned';

# i. (26) Create a view to find the customers who have churned and their cumulative total charges over time 
SELECT Customer_Status, Customer_ID, Total_Charges,
SUM(Total_Charges) OVER (ORDER BY Total_Charges) AS cumulative_total_charges
FROM customer_churn_telecom.customer_churn_edited
WHERE Customer_Status = 'Churned'
ORDER BY Total_Charges Desc limit 10;

# 5.	Customer Demographics and Characteristics + Financial Analysis: (13,17,23)
# a. (13)  Determine the average age and total charges for customers with multiple lines and online backup 
SELECT AVG(Age) AS average_age, AVG(Total_Charges) AS average_total_charges, Multiple_Lines, Online_Backup
FROM customer_churn_telecom.customer_churn_edited
WHERE Multiple_Lines = 'Yes' AND Online_Backup = 'Yes';

# b. (17) Calculate the average age and total charges for customers with different combinations of streaming services 
SELECT Streaming_TV, Streaming_Music, Streaming_Movies, 
AVG(Age) AS average_age, AVG(Total_Charges) AS average_total_charges
FROM customer_churn_telecom.customer_churn_edited
GROUP BY Streaming_TV, Streaming_Movies, Streaming_Music ORDER BY average_total_charges DESC;

#  c. (23) Determine the average age and total charges for customers who have churned, grouped by internet service and phone service 
SELECT Customer_Status, Internet_Service, Phone_Service,
AVG(Age) AS average_age, AVG(Total_Charges) AS average_total_charges
FROM customer_churn_telecom.customer_churn_edited WHERE Customer_Status = 'Churned'
GROUP BY Internet_Service, Phone_Service ORDER BY average_total_charges DESC;

# 6. Contract and Service Analysis + Financial Analysis: (19)
# a. (19)  Calculate the average monthly charges and total charges for customers who have churned, grouped by contract type and internet service type. 
SELECT Contract, Internet_Service, Internet_Type,
AVG(Monthly_Charge) AS average_monthly_charge, AVG(Total_Charges) AS average_total_charges
FROM customer_churn_telecom.customer_churn_edited WHERE Customer_Status = 'Churned'
GROUP BY Contract, Internet_Service, Internet_Type
ORDER BY average_total_charges DESC;

# 7. Stored Procedures (27, 28)
# a. (27)  Stored Procedure to Calculate Churn Rate 
DELIMITER $$
CREATE PROCEDURE CalculateChurnRate()
BEGIN SELECT 
COUNT(*) AS total_customers,
SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) AS churned_customers,
(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS churn_rate_percentage
FROM customer_churn_telecom.customer_churn_edited;
END $$
DELIMITER ;

#execute
CALL CalculateChurnRate();

# b. (28) Stored Procedure to Identify High-Value Customers at Risk of Churning
DELIMITER $$
CREATE PROCEDURE IdentifyHighValueChurnRisk()
BEGIN SELECT 
Customer_ID, Total_Charges, Monthly_Charge, Contract, Tenure_in_Months, Customer_Status
FROM customer_churn_telecom.customer_churn_edited WHERE Customer_Status = 'Churned'
AND Total_Charges > (SELECT AVG(Total_Charges) FROM customer_churn_telecom.customer_churn_edited)
ORDER BY Total_Charges DESC limit 10;
END $$
DELIMITER ;

#execute
CALL IdentifyHighValueChurnRisk();


