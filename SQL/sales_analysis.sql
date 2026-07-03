----------------------------------------------------------
-- Query 1: Total Sales
-- Purpose: Calculate the total sales of the company.
----------------------------------------------------------
SELECT SUM("Sales") AS total_sales
FROM orders;


----------------------------------------------------------
-- Query 2: Total Orders
-- Purpose: Count the total number of orders.
----------------------------------------------------------
SELECT COUNT(*) AS total_orders
FROM orders;


----------------------------------------------------------
-- Query 3: Average Sales
-- Purpose: Calculate the average sales.
----------------------------------------------------------

SELECT ROUND(AVG("Sales"), 2) AS average_sales
FROM orders;



----------------------------------------------------------
-- Query 4: Highest Sales
-- Purpose: Find the highest sales value.
----------------------------------------------------------
SELECT MAX("Sales") AS highest_sales
FROM orders;


----------------------------------------------------------
-- Query 5: Lowest Sales
-- Purpose: Find the lowest sales value.
----------------------------------------------------------

SELECT MIN("Sales") As lowest_sales
FROM orders;


----------------------------------------------------------
-- Query 6: Region Wise Sales
-- Purpose: Find total sales for each region.
----------------------------------------------------------


SELECT "Region",
		ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Region"
ORDER BY total_sales DESC;


----------------------------------------------------------
-- Query 7: State Wise Sales
-- Purpose: Find top 10 states by total sales.
----------------------------------------------------------

SELECT "State",
		ROUND(SUM("Sales"), 2) AS total_sales
FROM orders 
GROUP BY "State"
ORDER BY total_sales DESC
LIMIT 10;


----------------------------------------------------------
-- Query 8: Category Wise Sales
-- Purpose: Find total sales by category.
----------------------------------------------------------

SELECT "Category",
		ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Category"
ORDER by total_sales DESC;


----------------------------------------------------------
-- Query 9: Sub-Category Wise Sales
-- Purpose: Find total sales by sub-category.
----------------------------------------------------------

SELECT "Sub-Category",
		ROUND(SUM("Sales"), 2) AS total_sales
FROM orders 
GROUP BY "Sub-Category"
ORDER BY total_sales DESC;


----------------------------------------------------------
-- Query 10: Top 10 Customers by Sales
-- Purpose: Find customers with the highest total sales.
----------------------------------------------------------


SELECT "Customer Name",
		ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Customer Name"
ORDER BY total_sales DESC
LIMIT 10;


----------------------------------------------------------
-- Query 11: Top 10 Products by Sales
-- Purpose: Find the top 10 products with highest sales.
----------------------------------------------------------


SELECT "Product Name",
		ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;


----------------------------------------------------------
-- Query 12: Total Sales by Ship Mode
-- Purpose: Find total sales for each shipping mode.
----------------------------------------------------------

SELECT "Ship Mode",
 		ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Ship Mode"
ORDER BY total_sales DESC;


----------------------------------------------------------
-- Query 13: Total Sales by Segment
-- Purpose: Find total sales for each customer segment.
----------------------------------------------------------


SELECT "Segment",
		ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Segment"
ORDER BY total_sales DESC;


----------------------------------------------------------
-- Query 14: Number of Customers
-- Purpose: Count unique customers.
----------------------------------------------------------


SELECT COUNT(DISTINCT "Customer ID") AS total_customers
FROM orders;


----------------------------------------------------------
-- Query 15: Number of Products
-- Purpose: Count unique products.
----------------------------------------------------------


SELECT COUNT(DISTINCT "Product ID") AS total_products
FROM orders;



-- Query 16: Find the Top 5 Customers by Total Sales




SELECT 
	"Customer Name",
	SUM("Sales") AS total_sales
FROM orders
GROUP BY "Customer Name" 
LIMIT 5;


-- Query No. 17: Find the Top 5 Products by Total Sales

SELECT 
	"Product Name",
	SUM("Sales") AS total_sales
FROM orders
GROUP BY "Product Name"
ORDER BY Total_sales DESC
LIMIT 5;


-- Query No. 18: Find the Total Sales for Each Category


SELECT 
	"Category",
	SUM("Sales") AS total_sales
FROM orders
GROUP BY "Category"
ORDER BY total_sales DESC;



-- Query No. 19: Find Total Sales for Each Region

SELECT 
	"Region",
	SUM("Sales") AS total_sales
FROM orders
GROUP BY "Region"
ORDER BY total_sales DESC;


-- Query No. 20: Find Total Sales for Each Segment


SELECT 
	"Segment",
	SUM("Sales") AS total_sales
FROM orders
GROUP BY "Segment"
ORDER BY total_sales DESC;




-- Query No. 21: Find Total Sales by State


SELECT 
	"State",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "State"
ORDER BY  total_sales DESC;


-- Query No. 22: Find Total Sales by Category and Sub-Category

SELECT
	"Category",
	"Sub-Category",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Category",
		"Sub-Category"
ORDER BY 
		"Category",
		total_sales DESC;

-- Query No. 23: Find Total Sales by Year



SELECT
    EXTRACT(YEAR FROM TO_DATE("Order Date", 'DD-MM-YYYY')) AS order_year,
    ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY EXTRACT(YEAR FROM TO_DATE("Order Date", 'DD-MM-YYYY'))
ORDER BY order_year;




-- Query No. 24: Find Total Sales by Month



SELECT 
	EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY')) AS order_month,
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY'))
ORDER BY order_month;



-- Query No. 25: Find Total Orders in Each Region

SELECT
	"Region",
	COUNT(DISTINCT "Order ID") AS total_orders
FROM orders
GROUP BY "Region"
ORDER BY total_orders DESC;



-- Query No. 26: Find Average Sales by Category


SELECT 
	"Category",
	ROUND(AVG("Sales"), 2) AS average_Sales
FROM orders
GROUP BY "Category"
ORDER BY average_sales DESC;


-- Query No. 27: Find the Number of Customers in Each Segment


SELECT
	"Segment",
	COUNT(DISTINCT "Customer ID") AS total_customers
FROM  orders
GROUP BY "Segment"
ORDER BY total_customers DESC;


-- Query No. 28: Find Top 10 Cities by Total Sales


SELECT 
	"City",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "City"
ORDER BY total_sales DESC
LIMIT 10;


-- Query No. 29: Find Number of Orders in Each Category


SELECT
	"Category",
	COUNT(DISTINCT "Order ID") AS total_orders
FROM orders
GROUP BY "Category"
ORDER BY total_orders DESC;


-- Query No. 30: Find Top 10 Customers by Number of Orders


SELECT 
	"Customer Name",
	COUNT(DISTINCT "Order ID") AS total_orders
FROM orders
GROUP BY "Customer Name"
ORDER BY total_orders DESC
LIMIT 10;


-- Query No. 31: Find Top 10 States by Number of Orders


SELECT 
	"State",
	COUNT(DISTINCT "Order ID") AS total_orders
FROM orders
GROUP BY "State"
ORDER BY total_orders DESC
LIMIT 10;



-- Query No. 32: Find Average Sales by Region

SELECT
	"Region",
	ROUND(AVG("Sales"), 2) AS average_sales
FROM orders
GROUP BY "Region"
ORDER BY average_sales DESC;


-- Query No. 33: Find the Highest Sale


SELECT
	MAX("Sales") AS highest_sale
FROM orders;

-- Query No. 34: Find the Lowest Sale

SELECT 
	MIN("Sales") AS lowest_sale
FROM orders;


-- Query No. 35: Find Total Sales by Ship Mode


SELECT
	"Ship Mode",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Ship Mode"
ORDER BY total_sales DESC;


-- Query No. 36: Find Average Sales for Each Customer


SELECT 
	"Customer Name",
	ROUND(AVG("Sales"), 2) AS average_sales
FROM orders
GROUP BY "Customer Name"
ORDER BY average_sales DESC;



-- Query No. 37: Find Top 10 Products by Number of Orders

SELECT
	"Product Name",
	COUNT(DISTINCT"Order ID") AS total_orders
FROM orders
GROUP BY "Product Name"
ORDER BY total_orders DESC
LIMIT 10;



-- Query No. 38: Find the Number of Customers in Each State


SELECT
	"State",
	COUNT(DISTINCT "Customer ID") AS total_customers
FROM orders 
GROUP BY "State"
ORDER BY total_customers DESC;


-- Query No. 39: Find the Number of Customers in Each Category


SELECT
	"Category",
	COUNT(DISTINCT "Customer ID") AS total_customers
FROM orders
GROUP BY "Category"
ORDER BY total_customers DESC;

-- Query No. 40: Find the Number of Products in Each Category


SELECT
	"Category",
	COUNT(DISTINCT "Product ID") AS total_products
FROM orders
GROUP BY "Category"
ORDER BY total_products DESC;



-- Query No. 41: Find Top 10 Products by Total Sales

SELECT 
	"Product Name",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;


-- Query No. 42: Find Top 10 States by Average Sales

SELECT
	"State",
	ROUND(AVG("Sales"), 2) AS average_sales
FROM orders
GROUP BY "State"
ORDER BY average_sales DESC
LIMIT 10;

-- Query No. 43: Find Products with Sales Greater Than the Average Sales

SELECT
	"Product Name",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Product Name"
HAVING SUM("Sales") >
(
	SELECT AVG("Sales")
	FROM orders
)

ORDER BY total_sales DESC;

-- Query No. 44: Find Customers Whose Total Sales Are Greater Than 5000

SELECT 
	"Customer Name",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Customer Name"
HAVING SUM("Sales") > 5000
ORDER BY total_sales DESC;


-- Query No. 45: Find States Having More Than 100 Orders

SELECT
	"State",
	COUNT(DISTINCT "Order ID") AS total_orders
FROM orders
GROUP BY "State"
HAVING COUNT(DISTINCT "Order ID") > 100
ORDER BY total_orders DESC;

-- Query No. 45: Find States Having More Than 100 Orders


SELECT
	"Category",
	ROUND(AVG("Sales"), 2) AS average_sales
FROM orders
GROUP BY "Category"
HAVING AVG("Sales") > 250
ORDER BY average_sales DESC;

-- Query No. 47: Find the Top Customer by Total Sales

SELECT 
	"Customer Name",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Customer Name"
ORDER BY total_sales DESC
LIMIT 1;

-- Query No. 48: Find Products with Total Sales Greater Than 10000

SELECT
	"Product Name",
	ROUND(SUM("Sales"), 2) AS total_sales 
FROM orders
GROUP BY "Product Name"
HAVING SUM("Sales") > 10000
ORDER BY total_sales DESC;


-- Query No. 49: Find Cities with Average Sales Greater Than Overall Average Sales


SELECT 
	"City",
	ROUND(AVG("Sales"), 2) AS average_sales
FROM orders
GROUP BY "City"
HAVING AVG("Sales") >
(
	SELECT AVG("Sales")
	FROM orders
)
ORDER BY average_sales DESC;

-- Query No. 50: Find Customers Who Placed More Than 10 Orders

SELECT
	"Customer Name",
	COUNT(DISTINCT "Order ID") AS total_orders
FROM orders
GROUP BY "Customer Name"
HAVING COUNT(DISTINCT "Order ID") > 10
ORDER BY total_orders DESC;


-- Query No. 51: Find the Top Selling Category


SELECT 
	"Category",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Category"
ORDER BY total_sales DESC
LIMIT 1;

-- Query No. 52: Find the Top Selling Region

SELECT
	"Region",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Region"
ORDER BY total_sales DESC
LIMIT 1;


-- Query No. 53: Find Products Whose Total Sales Are Above the Average Product Sales


SELECT
	"Product Name",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Product Name"
HAVING SUM("Sales") >
(
	SELECT AVG(product_sales)
	FROM
    (
		SELECT SUM("Sales") AS product_sales
		FROM orders
		GROUP BY "Product Name"
	) AS product_summary
	
)
ORDER BY total_sales DESC;



-- Query No. 54: Find Customers Who Purchased from More Than One Category

SELECT
	"Customer Name",
	COUNT(DISTINCT "Category") AS categories_purchased
FROM orders
GROUP BY "Customer Name"
HAVING COUNT(DISTINCT "Category") > 1
ORDER BY categories_purchased DESC;


-- Query No. 55: Find States with More Than 20 Unique Customers

SELECT 
	"State",
	COUNT(DISTINCT "Customer ID") AS total_customers
FROM orders
GROUP BY "State"
HAVING COUNT(DISTINCT "Customer ID") > 20
ORDER BY total_customers DESC;


-- Query No. 56: Find the Top 5 Cities by Total Sales


SELECT
	"City",
	ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "City"
ORDER BY total_sales DESC
LIMIT 5;


-- Query No. 57: Find Categories Having More Than 100 Products Sold

SELECT
	"Category",
	COUNT("Product ID") AS products_sold
FROM orders
GROUP BY "Category"
HAVING COUNT("Product ID") > 100
ORDER BY products_sold desc;


-- Query No. 58: Rank Customers by Total Sales

SELECT
	"Customer Name",
	ROUND(SUM("Sales"), 2) AS total_sales,
	RANK() OVER (ORDER BY SUM("Sales") DESC) AS customer_rank
FROM orders
GROUP BY "Customer Name"
ORDER BY customer_rank;


-- Query No. 59: Dense Rank Products by Total Sales


SELECT
	"Product Name",
	ROUND(SUM("Sales"), 2) AS total_sales,
	DENSE_RANK()OVER (ORDER BY SUM("Sales") DESC) AS product_rank
FROM orders
GROUP BY "Product Name"
ORDER BY product_rank;


-- Query No. 60: Assign Row Number to Customers by Sales



SELECT
	"Customer Name",
	ROUND(SUM("Sales"), 2) AS total_sales,
	ROW_NUMBER() OVER (ORDER BY SUM("Sales") DESC) AS row_num
FROM orders
GROUP BY "Customer Name"
ORDER BY row_num;


-- Query No. 61: Rank States by Total Sales


SELECT
	"State",
	ROUND(SUM("Sales"), 2) AS totale_sales,
	RANK() OVER (ORDER BY SUM("Sales") DESC) AS state_rank
FROM orders
GROUP BY "State"
ORDER BY state_rank;


-- Query No. 62: Rank Categories by Total Sales

SELECT
	"Category",
	ROUND(SUM("Sales"), 2) AS total_sales,
	DENSE_RANK() OVER (ORDER BY SUM("Sales") DESC) AS category_rank
FROM orders
GROUP BY "Category"
ORDER BY category_rank;

-- Query No. 63: Find the Top Selling Product in Each Category

SELECT
	"Category",
	"Product Name",
	total_sales
FROM
(
	SELECT
		"Category",
		"Product Name",
		ROUND(SUM("Sales"), 2) AS total_sales,
		RANK() OVER (
			PARTITION BY "Category"
			ORDER BY SUM("Sales") DESC
		)AS product_rank
	FROM orders
	GROUP BY "Category", "Product Name"
) AS ranked_products
WHERE product_rank = 1;


-- Query No. 64: Find the Top Customer in Each Region


SELECT
	"Region",
	"Customer Name",
	total_sales
FROM
(
	SELECT
		"Region",
		"Customer Name",
		ROUND(SUM("Sales"), 2) AS total_sales,
		RANK()OVER(
			PARTITION BY "Region"
			ORDER BY SUM("Sales") DESC
		) AS customer_rank
	FROM orders
	GROUP BY "Region", "Customer Name"
) AS ranked_customers
WHERE customer_rank = 1;



-- Query No. 65: Find Top 3 Products in Each Category


SELECT
    "Category",
    "Product Name",
    total_sales,
    product_rank
FROM
(
    SELECT
        "Category",
        "Product Name",
        ROUND(SUM("Sales"), 2) AS total_sales,
        DENSE_RANK() OVER (
            PARTITION BY "Category"
            ORDER BY SUM("Sales") DESC
        ) AS product_rank
    FROM orders
    GROUP BY
        "Category",
        "Product Name"
) AS ranked_products
WHERE product_rank <= 3
ORDER BY
    "Category",
    product_rank;
 


-- Query No. 66: Find Top 5 Customers in Each State



SELECT
    "State",
    "Customer Name",
    total_sales,
    customer_rank
FROM
(
    SELECT
        "State",
        "Customer Name",
        ROUND(SUM("Sales"), 2) AS total_sales,
        DENSE_RANK() OVER (
            PARTITION BY "State"
            ORDER BY SUM("Sales") DESC
        ) AS customer_rank
    FROM orders
    GROUP BY
        "State",
        "Customer Name"
) AS ranked_customers
WHERE customer_rank <= 5
ORDER BY
    "State",
    customer_rank;



-- Query No. 67: Find the Lowest Selling Product in Each Category



SELECT
    "Category",
    "Product Name",
    total_sales
FROM
(
    SELECT
        "Category",
        "Product Name",
        ROUND(SUM("Sales"), 2) AS total_sales,
        RANK() OVER (
            PARTITION BY "Category"
            ORDER BY SUM("Sales") ASC
        ) AS product_rank
    FROM orders
    GROUP BY
        "Category",
        "Product Name"
) AS ranked_products
WHERE product_rank = 1
ORDER BY "Category";


-- Query No. 68: Find Total Sales and Percentage Contribution by Category


SELECT
    "Category",
    ROUND(SUM("Sales"), 2) AS total_sales,
    ROUND(
        SUM("Sales") * 100.0 /
        (SELECT SUM("Sales") FROM orders),
        2
    ) AS sales_percentage
FROM orders
GROUP BY "Category"
ORDER BY total_sales DESC;



-- Query No. 69: Find Customers Whose Sales Are Above Their Region's Average Sales


SELECT
    "Region",
    "Customer Name",
    total_sales
FROM
(
    SELECT
        "Region",
        "Customer Name",
        SUM("Sales") AS total_sales,
        AVG(SUM("Sales")) OVER (PARTITION BY "Region") AS region_avg
    FROM orders
    GROUP BY
        "Region",
        "Customer Name"
) AS customer_sales
WHERE total_sales > region_avg
ORDER BY "Region", total_sales DESC;



-- Query No. 70: Find Running Total of Sales by Order DateSELECT
    
SELECT 
  TO_DATE("Order Date", 'DD-MM-YYYY') AS order_date,
    ROUND(SUM("Sales"), 2) AS daily_sales,
    ROUND(
        SUM(SUM("Sales")) OVER (
            ORDER BY TO_DATE("Order Date", 'DD-MM-YYYY')
        ),
        2
    ) AS running_total
FROM orders
GROUP BY TO_DATE("Order Date", 'DD-MM-YYYY')
ORDER BY order_date;


-- Query No. 72: Find the Top 5 Products Using a CTE



WITH product_sales AS
(
    SELECT
        "Product Name",
        ROUND(SUM("Sales"), 2) AS total_sales
    FROM orders
    GROUP BY "Product Name"
)
SELECT
    "Product Name",
    total_sales
FROM product_sales
ORDER BY total_sales DESC
LIMIT 5;



-- Query No. 73: Find Average Sales by Region Using a CTE

WITH region_sales AS
(
    SELECT
        "Region",
        ROUND(AVG("Sales"), 2) AS average_sales
    FROM orders
    GROUP BY "Region"
)
SELECT
    "Region",
    average_sales
FROM region_sales
ORDER BY average_sales DESC;


-- Query No. 74: Find Categories with Sales Above 500000 Using a CTE


WITH category_sales AS
(
    SELECT
        "Category",
        ROUND(SUM("Sales"), 2) AS total_sales
    FROM orders
    GROUP BY "Category"
)
SELECT
    "Category",
    total_sales
FROM category_sales
WHERE total_sales > 500000
ORDER BY total_sales DESC;


-- Query No. 75: Find States with More Than 100 Customers Using a CTE


WITH state_customers AS
(
    SELECT
        "State",
        COUNT(DISTINCT "Customer ID") AS total_customers
    FROM orders
    GROUP BY "State"
)
SELECT
    "State",
    total_customers
FROM state_customers
WHERE total_customers > 100
ORDER BY total_customers DESC;


-- Query No. 76: Find the Top Customer in Each Region Using a CTE



WITH customer_sales AS
(
    SELECT
        "Region",
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        "Region",
        "Customer Name"
)
SELECT
    "Region",
    "Customer Name",
    ROUND(total_sales, 2) AS total_sales
FROM
(
    SELECT *,
           RANK() OVER (
               PARTITION BY "Region"
               ORDER BY total_sales DESC
           ) AS customer_rank
    FROM customer_sales
) ranked
WHERE customer_rank = 1
ORDER BY "Region";


-- Query No. 77: Find Total Sales and Total Orders by State Using a CTE

WITH state_summary AS
(
    SELECT
        "State",
        SUM("Sales") AS total_sales,
        COUNT(DISTINCT "Order ID") AS total_orders
    FROM orders
    GROUP BY "State"
)
SELECT
    "State",
    ROUND(total_sales, 2) AS total_sales,
    total_orders
FROM state_summary
ORDER BY total_sales DESC;


-- Query No. 78: Find Categories Whose Sales Are Above the Average Category Sales


WITH category_sales AS
(
    SELECT
        "Category",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Category"
)
SELECT
    "Category",
    ROUND(total_sales, 2) AS total_sales
FROM category_sales
WHERE total_sales >
(
    SELECT AVG(total_sales)
    FROM category_sales
)
ORDER BY total_sales DESC;


-- Query No. 79: Find the Top 3 States by Total Sales


WITH state_sales AS
(
    SELECT
        "State",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "State"
)
SELECT
    "State",
    ROUND(total_sales, 2) AS total_sales
FROM state_sales
ORDER BY total_sales DESC
LIMIT 3;


-- Query No. 80: Find Monthly Sales Summary



WITH monthly_sales AS
(
    SELECT
        EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY')) AS order_month,
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY'))
)
SELECT
    order_month,
    ROUND(total_sales, 2) AS total_sales
FROM monthly_sales
ORDER BY order_month;


-- Query No. 81: Find Year-wise Sales


WITH yearly_sales AS
(
    SELECT
        EXTRACT(YEAR FROM TO_DATE("Order Date",'DD-MM-YYYY')) AS order_year,
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY EXTRACT(YEAR FROM TO_DATE("Order Date",'DD-MM-YYYY'))
)
SELECT
    order_year,
    ROUND(total_sales,2) AS total_sales
FROM yearly_sales
ORDER BY order_year;


-- Query No. 82: Find Top 5 Cities by Sales in Each Region

WITH city_sales AS
(
    SELECT
        "Region",
        "City",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        "Region",
        "City"
)
SELECT
    "Region",
    "City",
    ROUND(total_sales,2) AS total_sales,
    city_rank
FROM
(
    SELECT *,
           DENSE_RANK() OVER(
               PARTITION BY "Region"
               ORDER BY total_sales DESC
           ) AS city_rank
    FROM city_sales
) ranked
WHERE city_rank <= 5
ORDER BY "Region", city_rank;


-- Query No. 83: Find Customer Sales with Overall Average Sales

WITH customer_sales AS
(
    SELECT
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Customer Name"
)
SELECT
    "Customer Name",
    ROUND(total_sales,2) AS total_sales,
    ROUND(
        (SELECT AVG(total_sales)
         FROM customer_sales),
        2
    ) AS overall_average_sales
FROM customer_sales
ORDER BY total_sales DESC;

-- Query No. 84: Find Top 3 Products in Each Sub-Category

WITH product_sales AS
(
    SELECT
        "Sub-Category",
        "Product Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        "Sub-Category",
        "Product Name"
)
SELECT
    "Sub-Category",
    "Product Name",
    ROUND(total_sales,2) AS total_sales,
    product_rank
FROM
(
    SELECT *,
           DENSE_RANK() OVER(
               PARTITION BY "Sub-Category"
               ORDER BY total_sales DESC
           ) AS product_rank
    FROM product_sales
) ranked
WHERE product_rank <= 3
ORDER BY
    "Sub-Category",
    product_rank;



-- Query No. 85: Find Region-wise Contribution to Total Sales


WITH region_sales AS
(
    SELECT
        "Region",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Region"
)
SELECT
    "Region",
    ROUND(total_sales,2) AS total_sales,
    ROUND(
        total_sales * 100.0 /
        (SELECT SUM(total_sales)
         FROM region_sales),
        2
    ) AS contribution_percentage
FROM region_sales
ORDER BY total_sales DESC;


-- Query No. 86: Find Monthly Sales with Running Total

WITH monthly_sales AS
(
    SELECT
        EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY')) AS order_month,
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY'))
)
SELECT
    order_month,
    ROUND(total_sales, 2) AS monthly_sales,
    ROUND(
        SUM(total_sales) OVER (
            ORDER BY order_month
        ),
        2
    ) AS running_total
FROM monthly_sales
ORDER BY order_month;


-- Query No. 87: Find Monthly Sales Growth Using LAG()

WITH monthly_sales AS
(
    SELECT
        EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY')) AS order_month,
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY'))
)
SELECT
    order_month,
    ROUND(total_sales, 2) AS monthly_sales,
    ROUND(
        LAG(total_sales) OVER (
            ORDER BY order_month
        ),
        2
    ) AS previous_month_sales
FROM monthly_sales
ORDER BY order_month;


-- Query No. 88: Find Month-over-Month Sales Difference


WITH monthly_sales AS
(
    SELECT
        EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY')) AS order_month,
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY'))
)
SELECT
    order_month,
    ROUND(total_sales, 2) AS monthly_sales,
    ROUND(
        total_sales -
        LAG(total_sales) OVER (ORDER BY order_month),
        2
    ) AS sales_difference
FROM monthly_sales
ORDER BY order_month;


-- Query No. 89: Find Top 3 Customers by Sales in Each Region


WITH customer_sales AS
(
    SELECT
        "Region",
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        "Region",
        "Customer Name"
)
SELECT
    "Region",
    "Customer Name",
    ROUND(total_sales, 2) AS total_sales,
    customer_rank
FROM
(
    SELECT *,
           DENSE_RANK() OVER (
               PARTITION BY "Region"
               ORDER BY total_sales DESC
           ) AS customer_rank
    FROM customer_sales
) ranked
WHERE customer_rank <= 3
ORDER BY
    "Region",
    customer_rank;


-- Query No. 90: Find Average Order Value by Region



SELECT
    "Region",
    ROUND(
        SUM("Sales") / COUNT(DISTINCT "Order ID"),
        2
    ) AS average_order_value
FROM orders
GROUP BY "Region"
ORDER BY average_order_value DESC;


-- Query No. 91: Find Next Month Sales Using LEAD()

WITH monthly_sales AS
(
    SELECT
        EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY')) AS order_month,
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY'))
)
SELECT
    order_month,
    ROUND(total_sales, 2) AS current_month_sales,
    ROUND(
        LEAD(total_sales) OVER (ORDER BY order_month),
        2
    ) AS next_month_sales
FROM monthly_sales
ORDER BY order_month;



-- Query No. 92: Find First Customer by Sales in Each Region


WITH customer_sales AS
(
    SELECT
        "Region",
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Region", "Customer Name"
)
SELECT
    "Region",
    "Customer Name",
    ROUND(total_sales, 2) AS total_sales,
    FIRST_VALUE("Customer Name") OVER (
        PARTITION BY "Region"
        ORDER BY total_sales DESC
    ) AS top_customer
FROM customer_sales
ORDER BY "Region", total_sales DESC;


-- Query No. 93: Divide Customers into 4 Sales Groups Using NTILE()


WITH customer_sales AS
(
    SELECT
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Customer Name"
)
SELECT
    "Customer Name",
    ROUND(total_sales, 2) AS total_sales,
    NTILE(4) OVER (
        ORDER BY total_sales DESC
    ) AS sales_group
FROM customer_sales
ORDER BY total_sales DESC;


-- Query No. 94: Find Sales Percentage Contribution by Customer

WITH customer_sales AS
(
    SELECT
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Customer Name"
)
SELECT
    "Customer Name",
    ROUND(total_sales, 2) AS total_sales,
    ROUND(
        total_sales * 100.0 /
        SUM(total_sales) OVER (),
        2
    ) AS contribution_percentage
FROM customer_sales
ORDER BY total_sales DESC;

-- Query No. 95: Find Top 10 Customers by Contribution Percentage


WITH customer_sales AS
(
    SELECT
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Customer Name"
)
SELECT
    "Customer Name",
    ROUND(total_sales, 2) AS total_sales,
    ROUND(
        total_sales * 100.0 /
        SUM(total_sales) OVER (),
        2
    ) AS contribution_percentage
FROM customer_sales
ORDER BY contribution_percentage DESC
LIMIT 10;



-- Query No. 96: Find the Last Customer by Sales in Each Region Using LAST_VALUE()


WITH customer_sales AS
(
    SELECT
        "Region",
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        "Region",
        "Customer Name"
)
SELECT
    "Region",
    "Customer Name",
    ROUND(total_sales, 2) AS total_sales,
    LAST_VALUE("Customer Name") OVER (
        PARTITION BY "Region"
        ORDER BY total_sales DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS lowest_customer
FROM customer_sales
ORDER BY "Region", total_sales DESC;


-- Query No. 97: Find Customer Sales Percent Rank

WITH customer_sales AS
(
    SELECT
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Customer Name"
)
SELECT
    "Customer Name",
    ROUND(total_sales,2) AS total_sales,
    ROUND(
        PERCENT_RANK() OVER (ORDER BY total_sales)::numeric,
        4
    ) AS percent_rank
FROM customer_sales
ORDER BY total_sales DESC;


-- Query No. 98: Find Customer Cumulative Distribution


WITH customer_sales AS
(
    SELECT
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Customer Name"
)
SELECT
    "Customer Name",
    ROUND(total_sales,2) AS total_sales,
    ROUND(
        CUME_DIST() OVER (ORDER BY total_sales)::numeric,
        4
    ) AS cumulative_distribution
FROM customer_sales
ORDER BY total_sales DESC;


-- Query No. 99: Find Top 20% Customers Using NTILE()

WITH customer_sales AS
(
    SELECT
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Customer Name"
)
SELECT
    "Customer Name",
    ROUND(total_sales, 2) AS total_sales
FROM
(
    SELECT
        *,
        NTILE(5) OVER (
            ORDER BY total_sales DESC
        ) AS customer_group
    FROM customer_sales
) ranked
WHERE customer_group = 1
ORDER BY total_sales DESC;


-- Query No. 100: Executive Sales Summary Report


SELECT
    ROUND(SUM("Sales"), 2) AS total_sales,
    COUNT(DISTINCT "Order ID") AS total_orders,
    COUNT(DISTINCT "Customer ID") AS total_customers,
    COUNT(DISTINCT "Product ID") AS total_products,
    ROUND(AVG("Sales"), 2) AS average_sale,
    ROUND(
        SUM("Sales") / COUNT(DISTINCT "Order ID"),
        2
    ) AS average_order_value
FROM orders;


-- Query No. 101: Find Top 5 States by Average Order Value



SELECT
    "State",
    ROUND(
        SUM("Sales") / COUNT(DISTINCT "Order ID"),
        2
    ) AS average_order_value
FROM orders
GROUP BY "State"
ORDER BY average_order_value DESC
LIMIT 5;


-- Query No. 102: Find the Number of Products in Each Category


SELECT
    "Category",
    COUNT(DISTINCT "Product ID") AS total_products
FROM orders
GROUP BY "Category"
ORDER BY total_products DESC;


-- Query No. 103: Find Customers Who Placed More Than 10 Orders



SELECT
    "Customer Name",
    COUNT(DISTINCT "Order ID") AS total_orders
FROM orders
GROUP BY "Customer Name"
HAVING COUNT(DISTINCT "Order ID") > 10
ORDER BY total_orders DESC;


-- Query No. 104: Find the Top Product in Each Region


WITH product_sales AS
(
    SELECT
        "Region",
        "Product Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        "Region",
        "Product Name"
)
SELECT
    "Region",
    "Product Name",
    ROUND(total_sales, 2) AS total_sales
FROM
(
    SELECT *,
           RANK() OVER (
               PARTITION BY "Region"
               ORDER BY total_sales DESC
           ) AS product_rank
    FROM product_sales
) ranked
WHERE product_rank = 1
ORDER BY "Region";


-- Query No. 105: Find the Average Sales by Ship Mode


SELECT
    "Ship Mode",
    ROUND(AVG("Sales"), 2) AS average_sales
FROM orders
GROUP BY "Ship Mode"
ORDER BY average_sales DESC;
SELECT
    "Ship Mode",
    ROUND(AVG("Sales"), 2) AS average_sales
FROM orders
GROUP BY "Ship Mode"
ORDER BY average_sales DESC;



-- Query No. 106: Find the Top 5 Cities by Number of Customer



SELECT
    "City",
    COUNT(DISTINCT "Customer ID") AS total_customers
FROM orders
GROUP BY "City"
ORDER BY total_customers DESC
LIMIT 5;



-- Query No. 107: Find Total Sales by Customer Segment and Region

SELECT
    "Segment",
    "Region",
    ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY
    "Segment",
    "Region"
ORDER BY
    "Segment",
    total_sales DESC;

-- Query No. 108: Find Customers with Above Average Total Sales


WITH customer_sales AS
(
    SELECT
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Customer Name"
)
SELECT
    "Customer Name",
    ROUND(total_sales, 2) AS total_sales
FROM customer_sales
WHERE total_sales >
(
    SELECT AVG(total_sales)
    FROM customer_sales
)
ORDER BY total_sales DESC;


-- Query No. 109: Find the Top 3 Products in Each Region


WITH product_sales AS
(
    SELECT
        "Region",
        "Product Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        "Region",
        "Product Name"
)
SELECT
    "Region",
    "Product Name",
    ROUND(total_sales, 2) AS total_sales,
    product_rank
FROM
(
    SELECT *,
           DENSE_RANK() OVER (
               PARTITION BY "Region"
               ORDER BY total_sales DESC
           ) AS product_rank
    FROM product_sales
) ranked
WHERE product_rank <= 3
ORDER BY
    "Region",
    product_rank;


-- Query No. 110: Find the Sales Contribution of Each State

WITH state_sales AS
(
    SELECT
        "State",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "State"
)
SELECT
    "State",
    ROUND(total_sales, 2) AS total_sales,
    ROUND(
        (total_sales * 100.0 /
        SUM(total_sales) OVER ())::numeric,
        2
    ) AS contribution_percentage
FROM state_sales
ORDER BY total_sales DESC;



-- Query No. 111: Find Top Category in Each Region


WITH category_sales AS
(
    SELECT
        "Region",
        "Category",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        "Region",
        "Category"
)
SELECT
    "Region",
    "Category",
    ROUND(total_sales, 2) AS total_sales
FROM
(
    SELECT *,
           RANK() OVER (
               PARTITION BY "Region"
               ORDER BY total_sales DESC
           ) AS category_rank
    FROM category_sales
) ranked
WHERE category_rank = 1
ORDER BY "Region";



-- Query No. 112: Find Top 5 Customers by Number of Orders in Each Region

WITH customer_orders AS
(
    SELECT
        "Region",
        "Customer Name",
        COUNT(DISTINCT "Order ID") AS total_orders
    FROM orders
    GROUP BY
        "Region",
        "Customer Name"
)
SELECT
    "Region",
    "Customer Name",
    total_orders,
    customer_rank
FROM
(
    SELECT *,
           DENSE_RANK() OVER (
               PARTITION BY "Region"
               ORDER BY total_orders DESC
           ) AS customer_rank
    FROM customer_orders
) ranked
WHERE customer_rank <= 5
ORDER BY
    "Region",
    customer_rank;


-- Query No. 113: Find Total Sales and Average Sales by Category


SELECT
    "Category",
    ROUND(SUM("Sales"), 2) AS total_sales,
    ROUND(AVG("Sales"), 2) AS average_sales
FROM orders
GROUP BY "Category"
ORDER BY total_sales DESC;


-- Query No. 114: Find States Where Total Sales Are Above Overall Average State Sales

WITH state_sales AS
(
    SELECT
        "State",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "State"
)
SELECT
    "State",
    ROUND(total_sales, 2) AS total_sales
FROM state_sales
WHERE total_sales >
(
    SELECT AVG(total_sales)
    FROM state_sales
)
ORDER BY total_sales DESC;

	

-- Query No. 115: Find Top 5 Products by Number of Orders


SELECT
    "Product Name",
    COUNT(DISTINCT "Order ID") AS total_orders
FROM orders
GROUP BY "Product Name"
ORDER BY total_orders DESC
LIMIT 5;


-- Query No. 116: Year-over-Year (YoY) Sales Growth

WITH yearly_sales AS
(
    SELECT
        EXTRACT(YEAR FROM TO_DATE("Order Date", 'DD-MM-YYYY')) AS order_year,
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY EXTRACT(YEAR FROM TO_DATE("Order Date", 'DD-MM-YYYY'))
)
SELECT
    order_year,
    ROUND(total_sales, 2) AS total_sales,
    ROUND(
        LAG(total_sales) OVER (ORDER BY order_year),
        2
    ) AS previous_year_sales,
    ROUND(
        (
            (total_sales - LAG(total_sales) OVER (ORDER BY order_year))
            /
            LAG(total_sales) OVER (ORDER BY order_year)
        ) * 100::numeric,
        2
    ) AS yoy_growth_percentage
FROM yearly_sales
ORDER BY order_year;


-- Query No. 117: Month-over-Month (MoM) Sales Growth Percentage


WITH monthly_sales AS
(
    SELECT
        EXTRACT(YEAR FROM TO_DATE("Order Date", 'DD-MM-YYYY')) AS order_year,
        EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY')) AS order_month,
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        EXTRACT(YEAR FROM TO_DATE("Order Date", 'DD-MM-YYYY')),
        EXTRACT(MONTH FROM TO_DATE("Order Date", 'DD-MM-YYYY'))
)
SELECT
    order_year,
    order_month,
    ROUND(total_sales, 2) AS total_sales,
    ROUND(
        LAG(total_sales) OVER (
            ORDER BY order_year, order_month
        ),
        2
    ) AS previous_month_sales,
    ROUND(
        (
            (
                total_sales -
                LAG(total_sales) OVER (
                    ORDER BY order_year, order_month
                )
            )
            /
            NULLIF(
                LAG(total_sales) OVER (
                    ORDER BY order_year, order_month
                ),
                0
            ) * 100
        )::numeric,
        2
    ) AS mom_growth_percentage
FROM monthly_sales
ORDER BY order_year, order_month;


-- Query No. 118: Pareto Analysis (Top Customers Contribution)


WITH customer_sales AS
(
    SELECT
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Customer Name"
),
customer_pareto AS
(
    SELECT
        "Customer Name",
        total_sales,
        SUM(total_sales) OVER (ORDER BY total_sales DESC) AS running_sales,
        SUM(total_sales) OVER () AS overall_sales
    FROM customer_sales
)
SELECT
    "Customer Name",
    ROUND(total_sales,2) AS total_sales,
    ROUND((running_sales * 100.0 / overall_sales)::numeric,2) AS cumulative_percentage
FROM customer_pareto
ORDER BY total_sales DESC;



-- Query No. 119: ABC Analysis of Products

WITH product_sales AS
(
    SELECT
        "Product Name",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Product Name"
),
product_pareto AS
(
    SELECT
        "Product Name",
        total_sales,
        SUM(total_sales) OVER (ORDER BY total_sales DESC) AS running_sales,
        SUM(total_sales) OVER () AS overall_sales
    FROM product_sales
)
SELECT
    "Product Name",
    ROUND(total_sales,2) AS total_sales,
    ROUND((running_sales * 100.0 / overall_sales)::numeric,2) AS cumulative_percentage,
    CASE
        WHEN (running_sales * 100.0 / overall_sales) <= 80 THEN 'A'
        WHEN (running_sales * 100.0 / overall_sales) <= 95 THEN 'B'
        ELSE 'C'
    END AS product_class
FROM product_pareto
ORDER BY total_sales DESC;


-- Query No. 120: Top 5 States by Average Customer Spending

WITH customer_state_sales AS
(
    SELECT
        "State",
        "Customer ID",
        SUM("Sales") AS customer_sales
    FROM orders
    GROUP BY
        "State",
        "Customer ID"
)
SELECT
    "State",
    ROUND(AVG(customer_sales),2) AS average_customer_spending
FROM customer_state_sales
GROUP BY "State"
ORDER BY average_customer_spending DESC
LIMIT 5;


-- Query No. 121: Best Selling Category in Each Year

WITH yearly_category_sales AS
(
    SELECT
        EXTRACT(YEAR FROM TO_DATE("Order Date",'DD-MM-YYYY')) AS order_year,
        "Category",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        EXTRACT(YEAR FROM TO_DATE("Order Date",'DD-MM-YYYY')),
        "Category"
)
SELECT
    order_year,
    "Category",
    ROUND(total_sales,2) AS total_sales
FROM
(
    SELECT *,
           RANK() OVER(
               PARTITION BY order_year
               ORDER BY total_sales DESC
           ) AS category_rank
    FROM yearly_category_sales
) ranked
WHERE category_rank = 1
ORDER BY order_year;


-- Query No. 122: Find Repeat Customers

SELECT
    "Customer Name",
    COUNT(DISTINCT "Order ID") AS total_orders
FROM orders
GROUP BY "Customer Name"
HAVING COUNT(DISTINCT "Order ID") > 1
ORDER BY total_orders DESC;


-- Query No. 123: Average Shipping Time

SELECT
    ROUND(
        AVG(
            TO_DATE("Ship Date",'DD-MM-YYYY')
            -
            TO_DATE("Order Date",'DD-MM-YYYY')
        ),
        2
    ) AS average_shipping_days
FROM orders;

-- Query No. 124: Top 5 Fastest Shipping States

SELECT
    "State",
    ROUND(
        AVG(
            TO_DATE("Ship Date",'DD-MM-YYYY') -
            TO_DATE("Order Date",'DD-MM-YYYY')
        ),
        2
    ) AS avg_shipping_days
FROM orders
GROUP BY "State"
ORDER BY avg_shipping_days ASC
LIMIT 5;


-- Query No. 125: Category-wise Average Shipping Time

SELECT
    "Category",
    ROUND(
        AVG(
            TO_DATE("Ship Date",'DD-MM-YYYY') -
            TO_DATE("Order Date",'DD-MM-YYYY')
        ),
        2
    ) AS avg_shipping_days
FROM orders
GROUP BY "Category"
ORDER BY avg_shipping_days;


-- Query No. 126: Customers Who Purchased From More Than One Category

SELECT
    "Customer Name",
    COUNT(DISTINCT "Category") AS categories_purchased
FROM orders
GROUP BY "Customer Name"
HAVING COUNT(DISTINCT "Category") > 1
ORDER BY categories_purchased DESC,
         "Customer Name";

-- Query No. 127: States Selling All Categories

SELECT
    "State",
    COUNT(DISTINCT "Category") AS total_categories
FROM orders
GROUP BY "State"
HAVING COUNT(DISTINCT "Category") =
(
    SELECT COUNT(DISTINCT "Category")
    FROM orders
);

-- Query No. 128: Top 10 Customers by Different Products Purchased

SELECT
    "Customer Name",
    COUNT(DISTINCT "Product ID") AS unique_products
FROM orders
GROUP BY "Customer Name"
ORDER BY unique_products DESC
LIMIT 10;		 

-- Query No. 129: Region with Highest Average Order Value

SELECT
    "Region",
    ROUND(
        SUM("Sales") /
        COUNT(DISTINCT "Order ID"),
        2
    ) AS average_order_value
FROM orders
GROUP BY "Region"
ORDER BY average_order_value DESC;


-- Query No. 130: Customer Purchase Frequency

SELECT
    "Customer Name",
    COUNT(DISTINCT "Order ID") AS total_orders,
    ROUND(
        SUM("Sales") /
        COUNT(DISTINCT "Order ID"),
        2
    ) AS average_order_value
FROM orders
GROUP BY "Customer Name"
ORDER BY total_orders DESC,
         average_order_value DESC;


 -- Query No. 131: Monthly Sales Trend by Year

SELECT
    EXTRACT(YEAR FROM TO_DATE("Order Date",'DD-MM-YYYY')) AS order_year,
    EXTRACT(MONTH FROM TO_DATE("Order Date",'DD-MM-YYYY')) AS order_month,
    ROUND(SUM("Sales"),2) AS total_sales
FROM orders
GROUP BY
    EXTRACT(YEAR FROM TO_DATE("Order Date",'DD-MM-YYYY')),
    EXTRACT(MONTH FROM TO_DATE("Order Date",'DD-MM-YYYY'))
ORDER BY order_year, order_month;



-- Query No. 132: Top Performing City in Each Region

WITH city_sales AS
(
    SELECT
        "Region",
        "City",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY "Region","City"
)
SELECT
    "Region",
    "City",
    ROUND(total_sales,2) AS total_sales
FROM
(
    SELECT *,
           RANK() OVER
           (
               PARTITION BY "Region"
               ORDER BY total_sales DESC
           ) AS city_rank
    FROM city_sales
) ranked
WHERE city_rank=1
ORDER BY "Region";


-- Query No. 133: Bottom 10 Products by Sales

SELECT
    "Product Name",
    ROUND(SUM("Sales"),2) AS total_sales
FROM orders
GROUP BY "Product Name"
ORDER BY total_sales ASC
LIMIT 10;


-- Query No. 134: Customer Lifetime Sales

SELECT
    "Customer ID",
    "Customer Name",
    ROUND(SUM("Sales"),2) AS lifetime_sales
FROM orders
GROUP BY
    "Customer ID",
    "Customer Name"
ORDER BY lifetime_sales DESC;



-- Query No. 135: Average Sales per Customer by Region

WITH customer_sales AS
(
    SELECT
        "Region",
        "Customer ID",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        "Region",
        "Customer ID"
)
SELECT
    "Region",
    ROUND(AVG(total_sales),2) AS average_customer_sales
FROM customer_sales
GROUP BY "Region"
ORDER BY average_customer_sales DESC;



-- Query No. 136: Highest Revenue Category by State

WITH category_sales AS
(
    SELECT
        "State",
        "Category",
        SUM("Sales") AS total_sales
    FROM orders
    GROUP BY
        "State",
        "Category"
)
SELECT
    "State",
    "Category",
    ROUND(total_sales,2) AS total_sales
FROM
(
    SELECT *,
           DENSE_RANK() OVER
           (
               PARTITION BY "State"
               ORDER BY total_sales DESC
           ) AS category_rank
    FROM category_sales
) ranked
WHERE category_rank=1
ORDER BY "State";


-- Query No. 137: Sales Distribution by Ship Mode

SELECT
    "Ship Mode",
    COUNT(DISTINCT "Order ID") AS total_orders,
    ROUND(SUM("Sales"),2) AS total_sales,
    ROUND(AVG("Sales"),2) AS average_sales
FROM orders
GROUP BY "Ship Mode"
ORDER BY total_sales DESC;



-- Query No. 138: Customer Purchase Diversity

SELECT
    "Customer Name",
    COUNT(DISTINCT "Category") AS categories,
    COUNT(DISTINCT "Sub-Category") AS sub_categories,
    COUNT(DISTINCT "Product ID") AS products
FROM orders
GROUP BY "Customer Name"
ORDER BY products DESC;


-- Query No. 139: Executive Dashboard Summary

SELECT
    ROUND(SUM("Sales"),2) AS total_sales,
    COUNT(DISTINCT "Order ID") AS total_orders,
    COUNT(DISTINCT "Customer ID") AS total_customers,
    COUNT(DISTINCT "Product ID") AS total_products,
    COUNT(DISTINCT "State") AS total_states,
    COUNT(DISTINCT "City") AS total_cities,
    ROUND(AVG("Sales"),2) AS average_sales
FROM orders;




-- Query No. 140: Final Business Performance Report

SELECT
    "Region",
    COUNT(DISTINCT "Order ID") AS total_orders,
    COUNT(DISTINCT "Customer ID") AS total_customers,
    ROUND(SUM("Sales"),2) AS total_sales,
    ROUND(AVG("Sales"),2) AS average_sales,
    ROUND(MAX("Sales"),2) AS highest_sale,
    ROUND(MIN("Sales"),2) AS lowest_sale
FROM orders
GROUP BY "Region"
ORDER BY total_sales DESC;