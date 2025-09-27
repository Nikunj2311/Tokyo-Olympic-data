--count the number of athlete from each country :
SELECT Country, Count(*) as TotalAthletes
from athlete
group by Country
order by TotalAthletes DESC;

-- Calculate the total medals won by each country:
SELECT TeamCountry,
SUM (Gold) Total_Gold,
SUM(Silver) Total_Silver,
SUM(Bronze) Total_Bronze
from medals
group by TeamCountry
ORDER by Total_Gold DESC;

--Calculate the average number of entries by gender for each discipline:
SELECT Discipline,
avg(Female) Avg_Female,
AVG(Male) Avg_Male
from entriesGender
group by Discipline;

