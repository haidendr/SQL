/*--By D.Haiden*--/
# performing aggregate functions in MySQL

#show top 6 data
SELECT * FROM test.chickweight LIMIT 6;

SELECT 'Total',
	sum(weight) as 'Weight',
    sum(time) as 'Time',
    sum(Chick) as 'Chick',
    sum(diet) as 'Diet'
FROM test.chickweight
union
SELECT 'Mean',
	avg(weight),
    avg(time),
    avg(Chick),
    avg(diet)
FROM test.chickweight
union
SELECT 'Minimum',
	min(weight),
    min(time),
    min(Chick),
    min(diet)
FROM test.chickweight
union
SELECT 'Maximum',
	max(weight),
    max(time),
    max(Chick),
    max(diet)
FROM test.chickweight
union
SELECT 'Count',
	count(weight),
    count(time),
    count(Chick),
    count(diet)
FROM test.chickweight;

# the width_bucket() function is only available on PostgreSQL
#SELECT weight,
#ROW_NUMBER() OVER w AS 'row_number',
#ntile(4) OVER W as 'ntile4'
#FROM test.chickweight
#WINDOW w AS (order by WEIGHT);

SELECT ROW_NUMBER() OVER(ORDER BY weight) AS row_num, weight
FROM test.chickweight
ORDER BY weight;
