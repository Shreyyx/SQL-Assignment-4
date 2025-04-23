select 
	s.shipment_id,
	s.primary_order_id as order_id,
	srs.TRACKING_ID_NUMBER as tracking_number,
	ss.status_date as shipment_date,
	srs.carrier_party_id,
	s.status_id as shipment_status
from 
	shipment s
join shipment_status ss on 
	ss.shipment_id = s.SHIPMENT_ID
join shipment_route_segment srs on
	srs.SHIPMENT_ID = s.SHIPMENT_ID
	where 
	srs.tracking_id_number is not null;