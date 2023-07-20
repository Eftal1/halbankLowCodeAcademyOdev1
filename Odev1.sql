-- AdventureWorks2017 veritabanında bulunan Product tablosundan, renkleri 'Red' ve 'Blue' olan ürünleri listeleyin.

SELECT * FROM Production.Product WHERE Color IN ('Red','Blue')

-- AdventureWorks2017 veritabanında bulunan Customer tablosundan, belirli müşteri kimlik numaralarına sahip müşterileri listeleyin.

SELECT * FROM Sales.Customer WHERE AccountNumber IN ('AW00000012','AW00000021','AW00000022','AW00000035','AW00000099')

-- AdventureWorks2017 veritabanında bulunan Product tablosundan, ürün adında "Mountain" kelimesi geçen ürünleri listeleyin.

SELECT * FROM Production.Product WHERE Name LIKE '%Mountain%'

--AdventureWorks2017 veritabanında bulunan Product tablosundan, ürün adı 'Touring-1000' veya 'Touring-2000' olan ürünleri listeleyin.

SELECT * FROM Production.Product WHERE Name LIKE '%Touring-1000%' OR Name LIKE '%Touring-2000%'

--AdventureWorks2017 veritabanında bulunan Person tablosundan, adı 'A' ile başlayan kişileri listeleyin.

SELECT * FROM Person.Person WHERE FirstName LIKE 'A%'

--AdventureWorks2017 veritabanında bulunan Product tablosundan, ürün adında 'Road' kelimesi geçen ve rengi 'Black' olan ürünleri listeleyin.

SELECT * FROM Production.Product WHERE NAME LIKE '%Road%' AND Color = 'Black'

--AdventureWorks2017 veritabanında bulunan Employee tablosundan, belirli departmanlarda çalışan çalışanları listeleyin.
SELECT * FROM HumanResources.Employee E 
LEFT JOIN HumanResources.EmployeeDepartmentHistory ED ON E.BusinessEntityID = ED.BusinessEntityID
LEFT JOIN HumanResources.Department D ON D.DepartmentID = ED.DepartmentID
WHERE Name IN ('Engineering','Tool Design','Marketing')

--AdventureWorks2017 veritabanında bulunan Product tablosundan, ürün adında 'Bike' kelimesi geçen ve fiyatı 100 ile 200 arasında olan ürünleri listeleyin.

SELECT * FROM Production.Product WHERE Name LIKE '%Bike%' AND ListPrice BETWEEN 100 AND 200;

