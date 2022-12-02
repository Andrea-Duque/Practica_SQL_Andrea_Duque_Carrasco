

--Creo el schema
create schema kc_vehicles authorization plyxgngv;

-- creo tablas vehicle_models, colors, vehicle
create table kc_vehicles.vehicle_models(
	id_model varchar(20) not null, -- PK
	name_model varchar(200) not null,
	brand varchar(200) not null,
	business_group varchar(200) not null
);

alter table kc_vehicles.vehicle_models 
add constraint vehicles_models_PK primary key (id_model);

create table kc_vehicles.colors(
	id_color varchar(20) not null, -- PK
	name_color varchar(20) not null
);

alter table kc_vehicles.colors
add constraint colors_PK primary key (id_color);

create table kc_vehicles.vehicle(
	id_vehicle varchar(20) not null, -- PK
	id_model varchar(20) not null, -- FK
	id_color varchar(20) not null, -- FK
	date_purchase date not null,
	registration_plate varchar(10) not null,
	total_km integer not null
	
);

alter table kc_vehicles.vehicle 
add constraint vehicle_PK primary key (id_vehicle);

alter table kc_vehicles.vehicle 
add constraint vehicle_vehicle_models_FK foreign key (id_model)
references kc_vehicles.vehicle_models (id_model);

alter table kc_vehicles.vehicle
add constraint vehicle_colors_FK foreign key (id_color)
references kc_vehicles.colors(id_color);

-- Insertar datos en las tablas

-- Tabla colors

insert into kc_vehicles.colors (id_color, name_color) values('C0001', 'Blue');
insert into kc_vehicles.colors (id_color, name_color) values('C0002', 'Red');
insert into kc_vehicles.colors (id_color, name_color) values('C0003', 'Black');
insert into kc_vehicles.colors (id_color, name_color) values('C0004', 'White');


--Tabla vehicle_models

insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('H0001','Honda Civic','Honda','Honda');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('F0003','Ford Fusion','Ford','Ford');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('F0012','Ford Focus','Ford','Ford');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('VW0010',	'Volkswagen Fox','Volkswagen','Volkswagen Group');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('VW0011',	'Volkswagen Beetle','Volkswagen','Volkswagen Group');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('S0004','SEAT Ibiza','SEAT','Volkswagen Group');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('HY0003','Hyundai Santa Fe','Hyundai','Hyundai Motor Company');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('K0001','Kia Sorento','Kia','Hyundai Motor Company');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('T0005','Toyota Corolla','Toyota','Toyota Motor Corporation');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('T0007','Toyota Prius','Toyota','Toyota Motor Corporation');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('T0008','Toyota Corona','Toyota','Toyota Motor Corporation');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('R0001','Renault Clio','Renault','Renault–Nissan–Mitsubishi Alliance');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('R0002','Renailt Mégane','Renault','Renault–Nissan–Mitsubishi Alliance');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('N0006','Nissan LEAF','Nissan','Renault–Nissan–Mitsubishi Alliance');
insert into kc_vehicles.vehicle_models (id_model, name_model, brand, business_group) values('M0009','Mitsubishi Eclipse Cross','Mitsubishi','Renault–Nissan–Mitsubishi Alliance');



-- Tabla vehicle
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0001','H0001','C0001','2021-05-13','4483GCD',28114);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0002','F0003','C0003','2021-06-07','4803GDJ',51750);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0003','F0012','C0002','2022-04-26','5405BNM',67573);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0004','VW0010','C0003','2021-01-01','0341LMB',47284);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0005','VW0011','C0004','2022-11-10','7715HJN',33492);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0006','S0004','C0001','2022-01-01','8983CJK',9364);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0007','HY0003','C0004','2022-12-19','9725LFK',63122);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0008','K0001','C0002','2021-04-27','0294NCJ',64339);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0009','T0005','C0001','2021-05-03','7670MHH',36085);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0010','T0007','C0002','2021-06-11','2372DML',56409);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0011','T0008','C0004','2022-06-23','7620DGB',30712);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0012','R0001','C0003','2021-07-23','5112DBK',31041);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0013','R0002','C0001','2022-09-13','4256KMM',52087);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0014','N0006','C0002','2022-08-28','5491GDL',69058);
insert into kc_vehicles.vehicle (id_vehicle, id_model, id_color, date_purchase, registration_plate, total_km) values('V0015','M0009','C0002','2021-03-19','6530GJB',42590);



--CREO LAS OTRAS TABLAS: hist_checkups, currency, hist_insurance, insurance_companies

create table kc_vehicles.currency(
	id_currency varchar(10) not null, -- PK
	name varchar(10) not null default 'EUR'
);

alter table kc_vehicles.currency
add constraint currency_PK primary key(id_currency);

create table kc_vehicles.insurance_company(
	id_insurance_company varchar(10) not null, -- PK
	name_insurance varchar(20) not null
);

alter table kc_vehicles.insurance_company
add constraint insurance_company_PK primary key(id_insurance_company);


create table kc_vehicles.hist_checkups(
	id_vehicle varchar(20) not null, -- PK, FK
	date_check_up date not null, -- PK
	kilometers integer not null,
	cost_check_up integer not null,
	id_currency varchar(10) not null -- FK
);

alter table kc_vehicles.hist_checkups
add constraint hist_checkups_PK primary key(id_vehicle, date_check_up);

alter table kc_vehicles.hist_checkups
add constraint hist_checkups_FK1 foreign key(id_vehicle)
references kc_vehicles.vehicle(id_vehicle);

alter table kc_vehicles.hist_checkups
add constraint hist_checkups_FK2 foreign key(id_currency)
references kc_vehicles.currency(id_currency);

create table kc_vehicles.hist_insurance(
	id_vehicle varchar(20) not null, -- PK,FK 
	id_insurance_company varchar(10) not null, --PK,FK
	date_start date not null, --PK
	date_end date not null,
	insurance_policy_number varchar(20) not null
);

alter table kc_vehicles.hist_insurance
add constraint hist_insurance_PK primary key(id_vehicle, id_insurance_company, date_start);

alter table kc_vehicles.hist_insurance
add constraint hist_insurance_FK1 foreign key(id_vehicle)
references kc_vehicles.vehicle(id_vehicle);

alter table kc_vehicles.hist_insurance
add constraint hist_insurance_FK2 foreign key(id_insurance_company)
references kc_vehicles.insurance_company(id_insurance_company);

--- Insert datos

insert into kc_vehicles.currency(id_currency, name) values('C001', 'EUR');
insert into kc_vehicles.currency(id_currency, name) values('C002', 'DOLLAR');

insert into kc_vehicles.insurance_company(id_insurance_company, name_insurance) values('001', 'Mapfre');
insert into kc_vehicles.insurance_company(id_insurance_company, name_insurance) values('002', 'AXA');
insert into kc_vehicles.insurance_company(id_insurance_company, name_insurance) values('003', 'MMT');

insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0001','2021-12-03',8000,45,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0001','2022-08-05',25000,30,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0002','2021-11-25',29480,40,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0002','2022-09-25',46878,25,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0003','2022-10-25',40003,70,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0004','2021-10-28',26006,40,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0004','2022-07-28',34678,25,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0006','2022-09-01',5768,40,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0008','2021-12-15',34987,40,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0008','2022-06-28',56867,40,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0009','2021-10-13',14005,20,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0009','2022-05-02',20425,20,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0010','2022-06-13',48673,60,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0011','2022-11-28',25674,20,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0012','2022-01-23',20234,45,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0015','2021-10-14',17473,30,'C001');
insert into kc_vehicles.hist_checkups (id_vehicle,date_check_up,kilometers,cost_check_up,id_currency) values('V0015','2022-09-02',38863,30,'C001');

insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0001','002','2021-05-13','2023-05-01', 'P001');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0002','001','2021-06-07','2023-06-02', 'P002');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0003','003','2022-04-26','2024-04-01', 'P003');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0004','002','2021-01-01','2023-01-01', 'P004');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0005','001','2022-11-10','2024-11-03', 'P005');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0006','003','2022-01-01','2024-01-01', 'P006');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0007','002','2022-12-09','2024-12-10', 'P007');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0008','002','2021-04-27','2023-04-07', 'P008');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0009','001','2021-05-03','2023-05-02', 'P009');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0010','001','2021-06-11','2023-06-05', 'P010');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0011','003','2022-06-23','2024-06-01', 'P011');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0012','002','2021-07-23','2023-08-01', 'P012');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0013','003','2022-09-13','2024-09-10', 'P013');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0014','002','2022-08-28','2024-09-01', 'P014');
insert into kc_vehicles.hist_insurance (id_vehicle, id_insurance_company, date_start, date_end, insurance_policy_number) values('V0015','001','2021-03-19','2023-03-15', 'P015');


