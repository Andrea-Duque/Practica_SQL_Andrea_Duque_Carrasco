

--Consulta
select b.name_model,b.brand, b.business_group,a.date_purchase, a.registration_plate, c.name_color, a.total_km, d.name_insurance,e.insurance_policy_number
from kc_vehicles.vehicle a, kc_vehicles.vehicle_models b, kc_vehicles.colors c, kc_vehicles.insurance_company d,kc_vehicles.hist_insurance e
where a.id_model = b.id_model and a.id_color = c.id_color and a.id_vehicle = e.id_vehicle and d.id_insurance_company = e.id_insurance_company
