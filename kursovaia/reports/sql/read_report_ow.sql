SELECT report_owner.id_bill ,summa,  id_ord, date_or
FROM report_owner
WHERE YEAR(date_or) = $year ;


