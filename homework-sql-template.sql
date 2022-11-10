select * 
from Sales.Customer 

GO

select * 
from Sales.Store 
order by Name


GO

select *
from HumanResources.Employee
where BirthDate < '1989-09-28'

GO

select [NationalIDNumber],[LoginID],[JobTitle]
from HumanResources.Employee
where LoginID Like  "%0"
order by JobTitle desc

GO

select *
from Person.Person
where ModifiedDate = 2008
and MiddleName is not null
and Title is null
GO

select distinct [Name]
from HumanResources.Department 
--Вывести название отдела (HumanResources.Department.Name) БЕЗ повторений
--в которых есть сотрудники
--Использовать таблицы HumanResources.EmployeeDepartmentHistory и HumanResources.Department
-------------------------------------------------------------

GO

select *
from Sales.SalesPerson
where Sum(CommissionPct) > 0
order by TerritoryID
GO

select top(10) HumanResources.Employee.VacationHours
from HumanResources.Employee
GO

select HumanResources.Employee.JobTitle
from HumanResources.Employee
where JobTitle = 'Sales Representative'
or JobTitle = 'Network Administrator'
or JobTitle = 'Network Manager'
GO

select *
from HumanResources.Employee, Purchasing.PurchaseOrderHeader
GO

