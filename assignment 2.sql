use games;
select * from games;
select * from game_sales;
# task 1
insert into games(GameTitle,Genre,ReleaseDate,Developer) values("Future Racing","Racing","10-01-2024","Speed Studios");
# Task 2
Update game_sales set Price=60.00 where GameID=2;
#Task 3
Delete from game_sales where GameID=5;
#Task 4
Select Platform,SalesRegion,count(Unitssold) from game_sales group by Platform,SalesRegion;
#Task 5
select GameID,Unitssold,SalesRegion from game_sales where SalesRegion="North America" order by Unitssold desc limit 1;
#Task 6
Select G.GameTitle,S.Platform,S.SalesRegion,S.Unitssold from Games G inner join Game_sales S on G.GameID=S.GameID;

#Task 7
Select * from games g left join game_sales s on g.GameID=s.GameID; 
#Task 8
Select * from games g Right join game_sales s on g.GameID=s.GameID;
# task 9
Select distinct GameID,SalesRegion from Game_sales where SalesRegion="North America" and SalesRegion="Europe";
#Task 10
Select GameID,SalesRegion from Game_sales where SalesRegion IN("North America","Europe");
