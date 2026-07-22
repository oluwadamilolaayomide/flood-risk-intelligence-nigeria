-- CHECKING FOR NULL VALUES 
SELECT * 
FROM flood_risk
WHERE Rainfall_mm IS NULL OR Avg_Temperature_C IS NULL OR Humidity_Percent IS NULL;

-- CHECKING FOR DUPLICATES
SELECT Record_ID, COUNT(*) AS COUNT
FROM flood_risk
GROUP BY Record_ID
HAVING COUNT(*) > 1;

SELECT Year, Month, State, COUNT(*) AS COUNT
FROM flood_risk
GROUP BY Year, Month, State
HAVING COUNT(*) > 1;

-- CHECKING SPELLING ERROR
SELECT DISTINCT  Flood_Severity
FROM flood_risk;

SELECT DISTINCT State
FROM flood_risk;

-- Generate month-year field
SELECT concat(Month, " ", Year) as month_year
FROM flood_risk;

-- Update full date column
ALTER TABLE flood_risk
ADD COLUMN Full_Date VARCHAR(50);

UPDATE  flood_risk
SET Full_Date = CONCAT(Month, ' ', Year);