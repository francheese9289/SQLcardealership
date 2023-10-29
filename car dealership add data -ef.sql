--Add customer to table
insert into customer (
	customer_id,
	first_name,
	last_name,
	email,
	address,
	city,
	state,
	zip
)VALUES(
	1,
	'Griffin',
	'Buell',
	'gwbuell@gmail.com',
	'9 Madison Ave',
	'Turners Falls',
	'MA',
	'01376'
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	email,
	address,
	city,
	state,
	zip
)VALUES(
	2,
	'Maple',
	'Francese',
	'mapledog@gmail.com',
	'12 Smiling Dog Farm',
	'Houston',
	'TX',
	'21531'
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	email,
	address,
	city,
	state,
	zip
)VALUES(
	3,
	'Liz',
	'Francheese',
	'echeese@gmail.com',
	'111 High St',
	'Brattleboro',
	'VT',
	'01501'
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	email,
	address,
	city,
	state,
	zip
)VALUES(
	4,
	'Blue',
	'Berry',
	'blueberry@gmail.com',
	'29 Bowling Lane',
	'Townshend',
	'VT',
	'05353'
);

--Add Sales Staff to table
insert into sales_staff(
	sales_id,
	sales_first,
	sales_last
)values(
	1,
	'Sean',
	'Henry'

);

insert into sales_staff(
	sales_id,
	sales_first,
	sales_last
)values(
	2,
	'Lauren',
	'Perlstein'

);

-- Add to Mechanic Table
insert into mechanics(
	mechanic_id,
	mechanic_first,
	mechanic_last
)values(
	1,
	'Connor',
	'Moriarty'
);

insert into mechanics(
	mechanic_id,
	mechanic_first,
	mechanic_last
)values(
	2,
	'Louis',
	'Lane'
);

insert into mechanics(
	mechanic_id,
	mechanic_first,
	mechanic_last
)values(
	3,
	'Stuart',
	'Little'
);

--Add to Service Type Table
insert into service_type(
	service_id,
	service_name,
	parts_required,
	serivice_rate
)VALUES(
	1,
	'oil change',
	'no',
	25.99
);

insert into service_type(
	service_id,
	service_name,
	parts_required,
	serivice_rate
)VALUES(
	2,
	'brake pads',
	'yes',
	87.99
);


insert into service_type(
	service_id,
	service_name,
	parts_required,
	serivice_rate
)VALUES(
	3,
	'spoiler',
	'yes',
	152.65
);


insert into service_type(
	service_id,
	service_name,
	parts_required,
	serivice_rate
)VALUES(
	4,
	'turbo power',
	'no',
	354.99
);


--Add to Car Classification Table
insert into car_class(
	class_id,
	class_name
)values(
	1,
	'new - for sale'
);

insert into car_class(
	class_id,
	class_name
)values(
	2,
	'used - for sale'
);

insert into car_class(
	class_id,
	class_name
)values(
	3,
	'other - service only'
);


--Cars Table Info
insert into cars(
	car_id,
	car_make,
	car_model,
	car_year,
	class_id
)VALUES(
	1,
	'subaru','impreza',
	'2013',
	1

);

insert into cars(
	car_id,
	car_make,
	car_model,
	car_year,
	class_id
)VALUES(
	2,
	'subaru','outback',
	'2000',
	3

);


insert into cars(
	car_id,
	car_make,
	car_model,
	car_year,
	class_id
)VALUES(
	3,
	'honda','civic',
	'2023',
	2

);


insert into cars(
	car_id,
	car_make,
	car_model,
	car_year,
	class_id
)VALUES(
	4,
	'toyota','tacoma',
	'2020',
	2

);

insert into cars(
	car_id,
	car_make,
	car_model,
	car_year,
	class_id
)VALUES(
	5,
	'wagon','horse drawn',
	'1801',
	3

);


--Add to Car Sales Table
insert into car_sales(
	sales_invoice,
	sales_amount,
	customer_id,
	car_id,
	sales_id
)values(
	1,
	3243.15,
	3,
	4,
	2
);

insert into car_sales(
	sales_invoice,
	sales_amount,
	customer_id,
	car_id,
	sales_id
)values(
	2,
	6523.15,
	3,
	1,
	1
);

--Service Ticket Information
insert into service_ticket(
	service_invoice,
	hours,
	total_cost,
	service_id,
	customer_id,
	car_id,
	mechanic_id
)values(
	1,
	4,
	89.99,
	2,
	3,
	1,
	2
);

insert into service_ticket(
	service_invoice,
	hours,
	service_id,
	customer_id,
	car_id,
	mechanic_id
)values(
	2,
	.5,
	2,
	3,
	1,
	2
);


