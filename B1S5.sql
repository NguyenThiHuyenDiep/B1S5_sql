create database ss5_bt1;
use ss5_bt1;

create table Restaurants (
	restaurant_id int auto_increment primary key,
    restaurant_name varchar(100),
    address varchar(255),
    district varchar(50),
    rating float
);

insert into Restaurants (restaurant_name, address, district, rating) 
values
('Quan A', '123 Le Loi', 'Quận 1', 2.5),
('Quan B', '456 Nguyen Hue', 'Quận 1', 4.5),
('Quan C', '789 Vo Van Tan', 'Quận 3', 4.2),
('Quan D', '101 Hai Ba Trung', 'Quận 3', 3.0),
('Quan E', '202 Tran Hung Dao', 'Quận 5', 4.8);

SELECT restaurant_name, address, rating
FROM Restaurants
WHERE district = 'Quận 1' 
   OR district = 'Quận 3' AND rating > 4.0;
   
-- Do khong dung ngoac nen SQL hieu sai logic
-- AND luon chay truoc OR
/* Quan 1 -> lay het, khong can biet rating
Quan 3 -> chi lay neu rating > 4.0
Vi vay moi co chuyen quan Quan 1 rating thap van xuat hien */

-- Viet lai cau lenh:
select restaurant_name, address, rating
from Restaurants
where (district = 'Quận 1' or district = 'Quận 3')
  and rating > 4.0;