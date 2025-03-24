SELECT * FROM international_debt;
---What is the total amount of debt owed by all countries in the dataset?
select (SUM(debt)/1000000)::numeric(20,2) as total_amount_of_debt
from international_debt;
---How many distinct countries are recorded in the dataset?
select count(distinct country_name) as total_number_of_countries
from international_debt;
---What are the distinct types of debt indicators, and what do they represent?
select  distinct COUNT( indicator_code) as distinct_code, indicator_name
from international_debt
group by indicator_name;

---Which country has the highest total debt, and how much does it owe?
select sum(debt) as total_debt,country_name
from international_debt
group by country_name
order by total_debt desc
limit 1;

select max(debt) as highest_total_debt
from international_debt;
select count(distinct indicator_code)
from international_debt;

---What is the average debt across different debt indicators?
select avg(debt) as average_debt, indicator_code
from international_debt
group by indicator_code 
order by average_debt desc;

---Which country has made the highest amount of principal repayments?
select country_name,sum(debt) as total_principle_repayment
from international_debt
where indicator_name like '%Principal repayments%'
group by country_name
order by total_principle_repayment desc
limit 1;

---above answer confirmation
select country_name,sum(debt) as total_principle_repayment
from international_debt
where indicator_name like '%Principal repayments%' and country_name='China'
group by country_name
order by total_principle_repayment desc;

---What is the most common debt indicator across all countries?
select count(indicator_name) as total_indicator_count,indicator_name
from international_debt id
group by indicator_name
order by count(indicator_name) desc;

---Identify any other key debt trends and summarize your findings.
--1. bilateral and multilateral debts
select country_name,sum(debt) as total_bilateral_debt
from international_debt
where indicator_name like '%bilateral%' 
group by country_name
order by total_bilateral_debt desc;

select country_name,sum(debt) as total_multilateral_debt
from international_debt
where indicator_name like '%multilateral%' 
group by country_name
order by total_multilateral_debt desc;

---2. country with the lowest bilateral debt
select country_name,sum(debt) as total_bilateral_debt
from international_debt
where indicator_name like '%bilateral%' 
group by country_name
order by total_bilateral_debt asc
limit 1;

