WITH RECURSIVE fib(x, y) AS (
		SELECT 0, 1 -- Initial subquery
	UNION ALL
		SELECT y, x+y FROM fib WHERE y < 100 -- Recursive subquery
)
SELECT x from fib;
