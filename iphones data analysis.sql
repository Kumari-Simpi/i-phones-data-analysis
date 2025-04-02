select * from iphone;

-- Average Sale price and rating by brand
SELECT Brand, AVG(`Sale Price`) AS avg_sale_price, AVG(`Star Rating`) AS avg_star_rating
FROM iphone
GROUP BY Brand;

-- Top 10 products with highest ratings
SELECT `Product Name`, `Star Rating`, `Sale Price`
FROM iphone
ORDER BY `Star Rating` DESC
LIMIT 10;

-- Total sales and average discount by brand
SELECT Brand, SUM(`Sale Price`) AS total_sales, AVG(`Discount Percentage`) AS avg_discount
FROM iphone
GROUP BY Brand;

-- Product with highest discount
SELECT `Product Name`, MAX(`Discount Percentage`) AS max_discount
FROM iphone
GROUP BY `Product Name`
ORDER BY max_discount DESC
LIMIT 1;

-- Discounted Products Performance
SELECT `Product Name`, `Discount Percentage`, 
       AVG(`Sale Price`) AS avg_sale_price, 
       AVG(`Star Rating`) AS avg_star_rating
FROM iphone
WHERE `Discount Percentage` > 10
GROUP BY `Product Name`, `Discount Percentage`
ORDER BY avg_sale_price DESC;

-- Top 10 Most Expensive Products
SELECT `Product Name`, 
       `Sale Price` 
FROM iphone
ORDER BY `Sale Price` DESC
LIMIT 10;

-- Products with Highest Number of Ratings
SELECT `Product Name`, 
       MAX(`Number Of Ratings`) AS rating_count
FROM iphone
GROUP BY `Product Name`
ORDER BY rating_count DESC
LIMIT 10;