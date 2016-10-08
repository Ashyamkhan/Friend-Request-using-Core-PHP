select DISTINCT ntable.id,ntable.price,ntable.serv_title,ntable.service,ntable.add_title,ntable.orderid,ntable.type,ord.services,ord.collection_item from(SELECT DISTINCT od.o_id as id, s.serv_price as price,s.serv_title,ss.subcate_title as service,  ua.add_title, od.o_id as orderid, od.type as type FROM order_details od, service s,service_subcategory ss, users u, useraddress ua WHERE s.subcate_id=ss.subcate_id AND od.services=s.serv_id AND od.cust_name=u.u_id AND ua.add_id=od.address AND od.cust_name='2' AND od.status='0' 
		UNION SELECT  sr.sr_id as id, s.serv_price as price,s.serv_title,ss.subcate_title as service, ua.add_title, sr.request_id as orderid, sr.type as type FROM service_request sr, service s,service_subcategory ss, users u, useraddress  ua WHERE s.subcate_id=ss.subcate_id AND sr.services=s.serv_id AND sr.u_id=u.u_id AND ua.add_id=sr.add_id  AND sr.sr_status='0' AND sr.u_id = '2'
		UNION SELECT DISTINCT sr.sr_id as id, ci.price as price,ci.title as serv_title,ss.subcate_title as service, ua.add_title, sr.request_id as orderid, sr.type as type FROM service_request sr, collection_items ci, service_subcategory ss, users u, useraddress  ua WHERE ci.subcate_id=ss.subcate_id AND sr.collection_item=ci.item_id AND sr.u_id=u.u_id AND ua.add_id=sr.add_id  AND sr.sr_status='0' AND sr.u_id = '2') as ntable 
 left join (select o_id as id,services,collection_item from order_details
           UNION
            select sr_id,services,collection_item from service_request
           ) as ord
       on ord.id=ntable.id






       NewOne




       select DISTINCT ntable.id,ntable.price,ntable.serv_title,ntable.service,ntable.add_title,ntable.orderid,ntable.type,ifnull(ord.services,"0") as services,ord.collection_item from(SELECT DISTINCT od.o_id as id, s.serv_price as price,s.serv_title,ss.subcate_title as service,  ua.add_title, od.o_id as orderid, od.type as type FROM order_details od, service s,service_subcategory ss, users u, useraddress ua WHERE s.subcate_id=ss.subcate_id AND od.services=s.serv_id AND od.cust_name=u.u_id AND ua.add_id=od.address AND od.cust_name='2' AND od.status='0' 
		UNION SELECT  sr.sr_id as id, s.serv_price as price,s.serv_title,ss.subcate_title as service, ua.add_title, sr.request_id as orderid, sr.type as type FROM service_request sr, service s,service_subcategory ss, users u, useraddress  ua WHERE s.subcate_id=ss.subcate_id AND sr.services=s.serv_id AND sr.u_id=u.u_id AND ua.add_id=sr.add_id  AND sr.sr_status='0' AND sr.u_id = '2'
		UNION SELECT DISTINCT sr.sr_id as id, ci.price as price,ci.title as serv_title,ss.subcate_title as service, ua.add_title, sr.request_id as orderid, sr.type as type FROM service_request sr, collection_items ci, service_subcategory ss, users u, useraddress  ua WHERE ci.subcate_id=ss.subcate_id AND sr.collection_item=ci.item_id AND sr.u_id=u.u_id AND ua.add_id=sr.add_id  AND sr.sr_status='0' AND sr.u_id = '2') as ntable 
 left join (select o_id as id,services,collection_item from order_details
           UNION
            select sr_id,services,collection_item from service_request
           ) as ord
       on ord.id=ntable.id









       select DISTINCT ntable.id,ntable.price,ntable.serv_title,ntable.service,ntable.add_title,ntable.orderid,ntable.type,ord.request_type,ifnull(ord.services,"0") as services,ord.collection_item from(SELECT DISTINCT od.o_id as id, s.serv_price as price,s.serv_title,ss.subcate_title as service,  ua.add_title, od.o_id as orderid, od.type as type FROM order_details od, service s,service_subcategory ss, users u, useraddress ua WHERE s.subcate_id=ss.subcate_id AND od.services=s.serv_id AND od.cust_name=u.u_id AND ua.add_id=od.address AND od.cust_name='2' AND od.status='0' 
    UNION SELECT  sr.sr_id as id, s.serv_price as price,s.serv_title,ss.subcate_title as service, ua.add_title, sr.request_id as orderid, sr.type as type FROM service_request sr, service s,service_subcategory ss, users u, useraddress  ua WHERE s.subcate_id=ss.subcate_id AND sr.services=s.serv_id AND sr.u_id=u.u_id AND ua.add_id=sr.add_id  AND sr.sr_status='0' AND sr.u_id = '2'
    UNION SELECT DISTINCT sr.sr_id as id, ci.price as price,ci.title as serv_title,ss.subcate_title as service, ua.add_title, sr.request_id as orderid, sr.type as type FROM service_request sr, collection_items ci, service_subcategory ss, users u, useraddress  ua WHERE ci.subcate_id=ss.subcate_id AND sr.collection_item=ci.item_id AND sr.u_id=u.u_id AND ua.add_id=sr.add_id  AND sr.sr_status='0' AND sr.u_id = '2') as ntable 
 left join (select o_id as id,services,collection_item,o_id*0 as request_type from order_details
           UNION
            select sr_id,services,collection_item,request_type from service_request
           ) as ord
       on ord.id=ntable.id;





       with request_type
       select DISTINCT ntable.id,ntable.price,ntable.serv_title,ntable.service,ntable.add_title,ntable.orderid,ntable.type,ord.request_type,ifnull(ord.services,"0") as services,ord.collection_item from(SELECT DISTINCT od.o_id as id, s.serv_price as price,s.serv_title,ss.subcate_title as service,  ua.add_title, od.o_id as orderid, od.type as type FROM order_details od, service s,service_subcategory ss, users u, useraddress ua WHERE s.subcate_id=ss.subcate_id AND od.services=s.serv_id AND od.cust_name=u.u_id AND ua.add_id=od.address AND od.cust_name='2' AND od.status='0' 
    UNION SELECT  sr.sr_id as id, s.serv_price as price,s.serv_title,ss.subcate_title as service, ua.add_title, sr.request_id as orderid, sr.type as type FROM service_request sr, service s,service_subcategory ss, users u, useraddress  ua WHERE s.subcate_id=ss.subcate_id AND sr.services=s.serv_id AND sr.u_id=u.u_id AND ua.add_id=sr.add_id  AND sr.sr_status='0' AND sr.u_id = '2'
    UNION SELECT DISTINCT sr.sr_id as id, ci.price as price,ci.title as serv_title,ss.subcate_title as service, ua.add_title, sr.request_id as orderid, sr.type as type FROM service_request sr, collection_items ci, service_subcategory ss, users u, useraddress  ua WHERE ci.subcate_id=ss.subcate_id AND sr.collection_item=ci.item_id AND sr.u_id=u.u_id AND ua.add_id=sr.add_id  AND sr.sr_status='0' AND sr.u_id = '2') as ntable 
 left join (select o_id as id,services,collection_item,collection_item*1 as request_type from order_details
           UNION
            select sr_id,services,collection_item,request_type from service_request
           ) as ord
       on ord.id=ntable.id