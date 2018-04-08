create table sale(saledate date,saleamount number(10,2));
alter session set nls_date_formate='yyyy-mm-dd';
begin
	for i in 1..12 loop
		insert into sale values ('2016-'||i||'-'||i,round((i+dbmx_random.value)*1000,2));
		insert into sale values ('2017-'||i||'-'||i,round((i+dbmx_random.value)*1000,2));
	end loop;
	
end;
commit;
select * from sale;