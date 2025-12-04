use netflix;
select * from netflix_originals;
#Task 1
select * from netflix_originals where Language in ('English','Spanish') AND IMDBScore>7 and Runtime>100;
#Task 2
select Language,count(*) from netflix_originals group by Language having count(Title)>5;
#Task 3
select Title,Language,Runtime, IMDBScore from netflix_Originals where Language="Hindi" order by Runtime Desc, IMDBScore desc limit 3; 
#Task 4
Select Title from netflix_originals where Title like '%house%' And IMDBScore>6;
#Task 5
Select * from netflix_originals where Premiere_date between '01-01-2018' and '31-12-2020' And Language in('English','Spanish','Hindi');
#Task 6
Select Title,Runtime,IMDBScore from netflix_originals where Runtime<60 Or IMDBScore<5 order by Premiere_date ;
#Task 7
select GenreID,Avg(distinct IMDBScore) as avg_IMDBScore from netflix_originals group by GenreID having count(GenreID)>10;
#Task 8
Select * from netflix_originals order by Runtime Desc limit 5; 
#Task 9
Select Language,count(distinct Title) as total_title from netflix_Originals where Premiere_date like '%2020' group by Language order by total_title Desc;
#Task 10
Create table Netflix
(
Title varchar(255) Not null,
GenreID varchar(10) not null,
Runtime int check (Runtime>30),
IMDBScore double check (IMDBSCORE>10),
Language varchar(255),
Premiere_Date date
); 
select * from Netflix;