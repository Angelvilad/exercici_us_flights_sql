-- 1
SELECT COUNT(flightID) AS "Total" FROM flights;

-- 2
SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides FROM flights GROUP BY Origin;

-- 3
SELECT Origin, colYear, colMonth, AVG(arrDelay) AS prom_arribades FROM flights GROUP BY Origin, colYear, colMonth ORDER BY Origin, colYear, colMonth;

-- 4
SELECT City, colYear, colMonth, AVG(arrDelay) AS prom_arribades FROM flights INNER JOIN usairports ON flights.Origin = usairports.IATA GROUP BY City, colYear, colMonth ORDER BY City, colYear, colMonth;

-- 5
SELECT UniqueCarrier FROM flights;SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS total_cancelled FROM flights GROUP BY colYear, colMonth, UniqueCarrier ORDER BY total_cancelled DESC;

-- 6
SELECT TailNum, SUM(Distance) AS totalDistance FROM flights WHERE TailNum != "" GROUP BY TailNum ORDER BY totalDistance DESC LIMIT 10;

--7
SELECT UniqueCarrier, AVG (ArrDelay) AS avgDelay FROM flights GROUP BY UniqueCarrier HAVING avgDelay > 10 ORDER BY avgDelay DESC;