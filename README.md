# International_Debt_Analysis 💰

---
In this project, I connected to a PostgreSQL database using a connection string that was provided to explore the dataset. The dataset contains information about international debt across various countries. 
The dataset contains information about international debt across various countries. key questions answered related to the total debt, distinct countries, debt indicators, and repayment information.

---
## **List of Questions and Findings**
:one: What is the total amount of debt owed by all countries in the dataset?
- The total debt owed by all countries in the dataset was calculated by summing the "debt" values and converting the result to millions and the result was: 3,079,735.08M

:two:How many distinct countries are recorded in the dataset?
- The total count of distinct countries in the dataset is 124.

:three:What are the distinct types of debt indicators, and what do they represent?
 - There are 25 distinct debt indicators with three major categories that include the original amount owed, the disbursed amount, and the interest on loans.
 - Some of these categories are:
     -   PPG
     -   Interest payments
     -   Principle repayments
     -   Disbursements

:four:Which country has the highest total debt, and how much does it owe?
- China has the highest debt owing up to 285793.52 million in total debt

:five:What is the average debt across different debt indicators?
- The average debt for each debt indicator was calculated by grouping the data by the indicator_code and name. This allowed for a comparison of debt averages across different debt categories. Here is a snippet of the result showing the average, the indicator code and name:
    - $5,904,868,420.41-**DT.AMT.DLXF.CD**-Principal repayments on external debt, long-term (AMT, current US$)
    - $5,161,194,287.74-**DT.AMT.DPNG.CD**-Principal repayments on external debt, private nonguaranteed (PNG) (AMT, current US$)
    - $2,152,041,234.12-**DT.DIS.DLXF.CD**-Disbursements on external debt, long-term (DIS, current US$)
    - $1,958,983,442.45-**DT.DIS.OFFT.CD**-PPG, official creditors (DIS, current US$)

:six:Which country has made the highest amount of principal repayments?
- The country with the highest amount of principal repayments on external debt is China with 168611.61 million on both the original amount and the newly disbursed loans as well as long term and PNG amount.
 
:seven:What is the most common debt indicator across all countries?
- The most common debt indicator across all countries is PPG, multilateral (INT, current US$) which appeared 124 times in the dataset.

:eight:Identify any other key debt trends and summarize your findings.
- **Bilateral Debt and bilateral debt interest**: The total bilateral debt and its interest for each country was calculated by filtering for debt indicators related to "bilateral" debt. This showed which countries had the highest bilateral debt.
 ![image](https://github.com/user-attachments/assets/27653f4e-b4d9-4a14-9916-f30f4cdcead4)

- **Country with Lowest Bilateral Debt**: To find the country with the lowest bilateral debt, the same query above was used to calculate the total bilateral debt for each country and sorted the results in ascending order limiting the query result to one so as to filter out the country that has the lowest bilateral debt as per the dataset.

  



 
