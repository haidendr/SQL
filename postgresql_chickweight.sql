--By Diane Haiden*--
--Performing aggregate functions and other summary statistics in PostgreSQL

--show top 6
SELECT * FROM public.chickweight LIMIT 6;

SELECT 'Total',
		sum(weight) AS weight,
		sum(time) AS time,
		sum(chick) AS chick,
		sum(diet) AS diet
FROM public.chickweight
UNION
SELECT 'Mean',
		round(avg(weight),2),
		round(avg(time),2),
		round(avg(chick),2),
		round(avg(diet),2)
FROM public.chickweight
UNION
SELECT 'Minimum',
		min(weight),
		min(time),
		min(chick),
		min(diet)
FROM public.chickweight
UNION
SELECT 'Maximum',
		max(weight),
		max(time),
		max(chick),
		max(diet)
FROM public.chickweight
UNION
SELECT 'Count',
		count(weight),
		count(time),
		count(chick),
		count(diet)
FROM public.chickweight
UNION

--finding first quartiles
SELECT 'Q1',
	PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY weight),
	PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY time),
	PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY chick),
	PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY diet)
	FROM public.chickweight
UNION

--finding median
SELECT 'Median',
	PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY weight),
	PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY time),
	PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY chick),
	PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY diet)
	FROM public.chickweight
UNION

--finding third quartile
SELECT 'Q3',
	PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY weight),
	PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY time),
	PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY chick),
	PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY diet)
	FROM public.chickweight;
