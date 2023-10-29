--Car Dealership Database

--Customer Table Creation
create table customer (
	customer_id SERIAL primary KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	address VARCHAR(150),
	city VARCHAR(50),
	state VARCHAR(50),
	zip VARCHAR(50)
);

--Sales Staff Table Creation
create table sales_staff(
	sales_id SERIAL primary key,
	sales_first VARCHAR(100),
	sales_last VARCHAR (100)
);

-- Mechanic Table Creation
create table mechanics(
	mechanic_id SERIAL primary key,
	mechanic_first VARCHAR(100),
	mechanic_last VARCHAR(100)
);

--Service Type Table Creation
create table service_type(
	service_id SERIAL primary key,
	service_name VARCHAR(200),
	parts_required VARCHAR(300),
	serivice_rate numeric (5,2)
); -- can I bring cost into service ticket table as a SUM?

alter table service_type rename column serivice_rate to service_rate;

--Car Classification Table
--distinguish between new and used cars for sale, and other customer cars
create table car_class(
	class_id SERIAL primary key,
	class_name VARCHAR(50)
);

--Add Dependent Tables

--Cars Table Creation
create table cars(
	car_id SERIAL primary key,
	car_make VARCHAR(100),
	car_model VARCHAR (100),
	car_year VARCHAR(4),
	class_id INTEGER not null,
	foreign key (class_id) references car_class(class_id)
);

--Car Sales Table Creation
create table car_sales(
	sales_invoice SERIAL primary key,
	sales_amount numeric (5,2),
	customer_id INTEGER not null,
	car_id INTEGER not null,
	sales_id INTEGER not null,
	foreign key (customer_id) references customer (customer_id),
	foreign key (car_id) references cars(car_id),
	foreign key (sales_id) references sales_staff(sales_id)
);

alter table car_sales 
alter column sales_amount type numeric(6,2);

--Service Ticket Table Creation
create table service_ticket(
	service_invoice SERIAL primary key,
	hours NUMERIC(3,2),
	total_cost numeric (5,2),
	service_id INTEGER not null,
	foreign key (service_id) references service_type (service_id)
);

alter table service_ticket add column car_id INTEGER;

alter table service_ticket 
	add constraint fk_service_ticket_car_id
	foreign key (car_id) references cars(car_id);

alter table service_ticket add column mechanic_id INTEGER;

alter table service_ticket
	add constraint fk_service_ticket_mechanic_id
	foreign key (mechanic_id) references mechanics(mechanic_id);

alter table service_ticket add column customer_id INTEGER;

alter table service_ticket 
	add constraint fk_service_ticket_customer_id
	foreign key (customer_id) references customer(customer_id);

alter table service_ticket drop column total_cost;

alter table service_ticket add column total_cost numeric (6,2);

alter table service_ticket add column service_rate numeric(5,2);

alter table service_ticket drop column service_rate;

