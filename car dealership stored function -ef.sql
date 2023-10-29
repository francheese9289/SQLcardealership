--Created Stored Functions for Car Dealership Database

--Function to create a service ticket
create or replace function add_service_ticket(_service_invoice INTEGER, 
_hours INTEGER, 
_customer_id INTEGER,
_car_id INTEGER,
_service_id INTEGER,
_mechanic_id INTEGER
)
returns void

as $MAIN$
begin 
	insert into service_ticket (service_invoice, hours, customer_id, car_id, service_id, mechanic_id)
	values (_service_invoice, _hours, _customer_id, _car_id,_service_id, _mechanic_id);
end;
$MAIN$
language plpgsql;

select add_service_ticket (3,2,3,3,1,1);
select add_service_ticket (4,3,2,1,3,2);

select*from service_ticket;