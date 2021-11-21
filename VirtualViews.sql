drop view ride_date;



create view ride_date as select * from dateC;
create view search_date as select * from dateC;

create view search_time as select * from timeOfDay;
create view order_time as select * from timeOfDay;
create view dep_time as select * from timeOfDay;
create view arr_time as select * from timeOfDay;


create view search_district as select * from district;
create view dep_district as select * from district;
create view arr_district as select * from district;
