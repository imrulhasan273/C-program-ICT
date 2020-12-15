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



