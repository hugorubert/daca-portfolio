-- 1. Müük kuude kaupa
SELECT      
DATE_TRUNC('month', sale_date) AS kuu,      
COUNT(sale_id) AS tellimuste_arv,      
SUM(total_price) AS kogukäive,      
ROUND(AVG(total_price), 2) AS keskmine_tellimus    
FROM sales    WHERE sale_date >= '2024-01-01'    
GROUP BY DATE_TRUNC('month', sale_date)    
ORDER BY kuu;

-- 2. Müük kategooriate kaupa
SELECT      
    p.category AS kategooria,      
    COUNT(DISTINCT p.product_id) AS toodete_arv,      
    SUM(s.total_price) AS kogumüük,      
    ROUND(AVG(s.total_price), 2) AS keskmine_hind    
FROM sales s    
JOIN products p ON s.product_id = p.product_id    
WHERE s.sale_date >= '2024-01-01'    
GROUP BY p.category    
HAVING SUM(s.total_price) > 1000    
ORDER BY kogumüük DESC;

-- 3. Kuised trendid CTE-ga
WITH kuu_myyk AS 
(      
  SELECT        
  DATE_TRUNC('month', sale_date) AS kuu,        
  SUM(total_price) AS käive      
  FROM sales      
  WHERE sale_date >= '2024-01-01'      
  GROUP BY DATE_TRUNC('month', sale_date)    
  )    
  SELECT      
  kuu,      
  käive,      
  LAG(käive) OVER (ORDER BY kuu) AS eelmine_kuu,      
  käive - LAG(käive) OVER (ORDER BY kuu) AS muutus    
  FROM kuu_myyk    
  ORDER BY kuu;

  -- edasijõudnud: CTE + window function, arvuta kuust-kuusse kasvu protsent
  ROUND((käive - LAG(käive) OVER (ORDER BY kuu))          / LAG(käive) OVER (ORDER BY kuu)  100, 1) AS kasvu_protsent

  -- with_autodetection
  WITH kuu_myyk AS (      
  SELECT        
    DATE_TRUNC('month', sale_date) AS kuu,        
    SUM(total_price) AS käive      
  FROM sales      
  WHERE sale_date >= '2024-01-01'      
  GROUP BY DATE_TRUNC('month', sale_date)    
)    
SELECT      
  kuu,      
  käive,      
  LAG(käive) OVER (ORDER BY kuu) AS eelmine_kuu,      
  käive - LAG(käive) OVER (ORDER BY kuu) AS muutus,
  ROUND((käive - LAG(käive) OVER (ORDER BY kuu)) 
        / LAG(käive) OVER (ORDER BY kuu) * 100, 1) AS kasvu_protsent
FROM kuu_myyk    
ORDER BY kuu;

-- [lesanne d]
SELECT      
w.source AS turunduskanal,      
COUNT(DISTINCT c.customer_id) AS kliente,      
COUNT(DISTINCT o.sale_id) AS tellimusi,      
SUM(o.total_price) AS kogukäive,      
ROUND(AVG(o.total_price), 2) AS keskmine_tellimus    
FROM sales o    
JOIN customers c ON o.customer_id = c.customer_id    
LEFT JOIN web_logs w ON c.customer_id = w.customer_id    
GROUP BY w.source    
ORDER BY kogukäive DESC; 
