-- Returns first 100 rows from tutorial.aapl_historical_stock_price

select * from tutorial.aapl_historical_stock_price;


--total volume as on now.
select 
    sum(volume) as total_volume
from 
  tutorial.aapl_historical_stock_price;
  
  
--average volume as on now.
select 
    avg(volume) as avg_volume
from 
  tutorial.aapl_historical_stock_price;
  
  
--count number of rows as on now.
select 
    count(1)
from 
  tutorial.aapl_historical_stock_price;
  
  

select * from tutorial.aapl_historical_stock_price limit 3000;

  
  
--Minimum volume as on now
select 
    min(volume)
from 
  tutorial.aapl_historical_stock_price;
  
  
--Maximum volume as on now
select 
    max(volume)
from 
  tutorial.aapl_historical_stock_price;
  
  
  
--Find those rows whose volume is zero.
select
  *
from 
  tutorial.aapl_historical_stock_price
where 
  volume = 0;
  
  
--Find id and volume of rows whose volume is zero.
select
  id, date
from 
  tutorial.aapl_historical_stock_price
where 
  volume = 0;
  
  
select * from tutorial.aapl_historical_stock_price;


--Find unique/distinct years in dataset.
select 
  distinct year 
from 
  tutorial.aapl_historical_stock_price order by year asc;
  
  


select * from tutorial.aapl_historical_stock_price;


--Find unique/distinct months in dataset.
select 
  distinct month 
from 
  tutorial.aapl_historical_stock_price order by month asc;


select * from tutorial.aapl_historical_stock_price;



---Find total Volume, count, avg(close) group by years.
select 
    year,
    sum(volume) as total_volume,
    count(1) as day_count,
    avg(close) as avg_close_value,
    count (distinct month) as count_month
from 
    tutorial.aapl_historical_stock_price
group by 
    year;
  
  

  

select * from tutorial.aapl_historical_stock_price;




