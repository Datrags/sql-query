-- Comments in SQL Start with dash-dash --
SELECT id, app_name FROM analytics WHERE id = 1880;  
SELECT id, app_name FROM analytics WHERE last_updated = 
'2018-08-01';

SELECT category, COUNT(category) FROM analytics GROUP BY category;
SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;
SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

SELECT app_name, price, rating FROM analytics WHERE rating < 3.0 
ORDER BY price DESC LIMIT 1;

SELECT category, AVG(rating) FROM analytics 
GROUP BY category ORDER BY AVG(rating) DESC;

SELECT app_name, min_installs, rating FROM analytics WHERE min_installs < 50 and 
rating > 0 ORDER BY rating DESC;

SELECT app_name from analytics WHERE rating < 3 and reviews >= 10000;

SELECT * from analytics WHERE price > 0.10 and price < 1.00 
ORDER BY reviews DESC LIMIT 10;

SELECT * FROM analytics WHERE last_updated  =
(SELECT min(last_updated) FROM analytics);

SELECT * FROM analytics WHERE price =
(SELECT max(price) FROM analytics);

SELECT SUM(reviews) from analytics;

SELECT category, COUNT(category) FROM analytics 
GROUP BY category HAVING COUNT(category)  > 300;

SELECT app_name, reviews, min_installs, reviews/min_installs
 FROM analytics WHERE min_installs >= 100000 ORDER BY reviews/min_installs 
 DESC LIMIT 1;