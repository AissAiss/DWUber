drop view ride_date;
drop view search_date;

drop view search_time;
drop view order_time;
drop view dep_time;
drop view arr_time;

drop view search_district;
drop view dep_district;
drop view arr_district;



create view ride_date as select * from dateC;
create view search_date as select * from dateC;

create view search_time as select * from timeOfDay;
create view order_time as select * from timeOfDay;
create view dep_time as select * from timeOfDay;
create view arr_time as select * from timeOfDay;


create view search_district as select * from district;
create view dep_district as select * from district;
create view arr_district as select * from district;
