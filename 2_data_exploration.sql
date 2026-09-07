-- فحص عدد الصفوف التي لا تحتوي على رمز بريدي
SELECT COUNT(*) AS missing_postal_codes
FROM store_sales
WHERE postal_code IS NULL OR postal_code = '';
-- استعراض شكل التواريخ الحالي
SELECT order_date, ship_date
FROM store_sales
LIMIT 10;
-- حساب إجمالي المبيعات وعدد الطلبات
SELECT COUNT(order_id) AS total_orders, ROUND(SUM(sales), 2) AS total_sales
FROM store_sales;
