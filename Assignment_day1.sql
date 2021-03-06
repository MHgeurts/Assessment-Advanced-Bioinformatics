# Assignment 1.1 #
# Merge 3 or more tables

SELECT Customers.CustomerName, Products.ProductName, Products.Price, Suppliers.SupplierName, Suppliers.ContactName
FROM Orders 
JOIN Customers
ON Orders.CustomerID=Customers.CustomerID
JOIN OrderDetails
ON Orders.OrderID=OrderDetails.OrderID
JOIN Products
ON OrderDetails.ProductID=Products.ProductID
JOIN Suppliers
ON Products.SupplierID=Suppliers.SupplierID
WHERE CustomerName="Wolski"

# Assignment 1.2 #
# Create Mutation table #


CREATE TABLE Mutations 
(
  Chromosome_Number character(2),
  Genomic_Position_Start integer,
  Genomic_Position_Stop integer,
  Database_ID character(20),
  Reference_Allele character(255),
  Variant_Allele character(255),
  Variant_Type character(20),
  Sift_Prediction character(20),
  Polyphen_V2_Prediction character(20),
  Genotype character(3),
  Sample_ID character(255)
  );
  
CREATE TABLE Samples
(
  Sample_Name character(255),
  Etnicity character(255),
  Gender character(255),
  Age character(3),
  Marrital_status character(10),
  Hair_Colour character(255),
  BMI Character(5),
  Pet_Species character(255),
  Pet_Name character(255),
  Sample_ID character(255)
  );
  

