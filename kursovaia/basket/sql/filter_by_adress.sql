SELECT billboards.*, GROUP_CONCAT(YM_start) AS YM_starts, GROUP_CONCAT(YM_end) AS YM_end
FROM billboards
LEFT JOIN order_lines ON billboards.id_bill = order_lines.idbill
WHERE approved = "да" and address like $adress
GROUP BY billboards.id_bill;