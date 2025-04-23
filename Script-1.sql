select
	s.SHIPMENT_ID,
	s.ORIGIN_FACILITY_ID,
	ss.STATUS_DATE as SHIPMENT_DATE,
	s.PRIMARY_ORDER_ID as ORDER_ID
from
	shipment s
join shipment_status ss on
	ss.SHIPMENT_ID = s.SHIPMENT_ID
where
	s.STATUS_ID = 'SHIPMENT_SHIPPED'
	and ss.STATUS_DATE between '2022-01-01' and '2022-01-31'
;

