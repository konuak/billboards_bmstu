SELECT DISTINCT YEAR(date_or) AS date_m
FROM report_owner
JOIN billboards ON (report_owner.id_bill = billboards.id_bill)
JOIN owner ON (billboards.ido = owner.id_o)
WHERE owner.id_o = $id_owner;

