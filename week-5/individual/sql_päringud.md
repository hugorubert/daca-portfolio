-- lao seis kategoriseeritud
SELECT p.category, SUM(i.quantity_available) AS kogus 
FROM inventory i 
JOIN products p ON i.product_id = p.product_id 
GROUP BY p.category ORDER BY kogus DESC; 

-- müük asukohtade lõikes
SELECT store_location, SUM(total_price) AS tulu, 
 COUNT(*) AS tehinguid  
FROM sales GROUP BY store_location ORDER BY tulu DESC;  

-- kategooria kogus filtreeritud välja negatiivsed ning aegunud andmed koosluses inventory_movement
WITH movement_stock AS (
  SELECT
    im.product_id,
    im.location,
    SUM(im.quantity) AS current_stock
  FROM inventory_movements im
  GROUP BY im.product_id, im.location
)
SELECT
  p.category,
  SUM(ms.current_stock) AS kogus
FROM movement_stock ms
JOIN products p ON ms.product_id = p.product_id
WHERE ms.current_stock > 0
GROUP BY p.category
ORDER BY kogus DESC;
