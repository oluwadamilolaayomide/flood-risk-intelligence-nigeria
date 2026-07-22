-- Business Question 1: Flood impact by state and region
SELECT State, Region,
SUM(Fatalities) AS Total_fatalities,
SUM(Displaced_persons) AS Total_displaced,
SUM(Economic_loss_million_NGN) Total_economic_loss
FROM Flood_risk
GROUP BY State,Region
ORDER BY Total_fatalities DESC;

--Business Question 2: Flood trends over time
SELECT Year,
COUNT(*) AS Flood_incidents,
SUM(Fatalities) AS Total_fatalities,
SUM(Economic_loss_million_NGN) Total_economic_loss
FROM Flood_risk
GROUP BY Year
ORDER BY Year;

--Business Question 3: Causes of Rainfall and Flood severity 
SELECT  
	CASE 
		WHEN Rainfall_mm < 500 THEN 'Low_rainfall'
        WHEN Rainfall_mm BETWEEN 500 AND 999 THEN 'Moderate_rainfall'
        WHEN Rainfall_mm BETWEEN 1000 AND 1499 THEN 'High_rainfall'
        WHEN Rainfall_mm BETWEEN 1500 AND 1999 THEN 'Very_High'
        ELSE 'Risk'
END AS Rainfall_variation,
COUNT(*) AS Flood_severity,
	COUNT(*) FILTER (WHERE Flood_Severity = 'High') AS High_Severity,
    COUNT(*) FILTER (WHERE Flood_Severity = 'Moderate') AS Moderate_Severity,
    COUNT(*) FILTER (WHERE Flood_Severity = 'Low') AS Low_Severity
FROM Flood_risk
GROUP BY  Rainfall_variation;

---Business Question 4: Emergency rate response 
SELECT State, Region, Avg_ERT,
CASE
	 WHEN Avg_ERT <= 6 THEN '1-6hrs (Very_fast)'
	  WHEN Avg_ERT <= 12 THEN '7-12hrs (Fast)'
	   WHEN Avg_ERT <= 18 THEN '13-18hrs (Slow)'
	    WHEN Avg_ERT < 24 THEN '19-23hrs (Very_Slow)'
		ELSE 'Above 24hrs (Extremely_slow)'
END AS Response_rate,
Total_fatalities, Total_displaced
FROM (
	SELECT State, Region, ROUND(AVG(Emergency_response_time_hours),2) AS Avg_ERT,  
	SUM(Fatalities) AS Total_fatalities,
	SUM(Displaced_persons) AS Total_displaced
	FROM Flood_risk
	GROUP BY State, Region
	) AS State_response;

-- -Business Question 5: Climate risk index by state
WITH DTV AS (
	SELECT State, Region, Year,
	ROUND(AVG(Climate_risk_index),2) AS Avg_CRI
	FROM Flood_risk
	GROUP BY State,Region, Year
),
SUMMARY AS (
SELECT State, Region,
ROUND(AVG(Avg_CRI),2) AS Overall_avg_risk,
ROUND(MIN(Avg_CRI),2) AS Best_year_risk,
ROUND(MAX(Avg_CRI),2) AS Worst_year_risk,
ROUND(AVG(CASE WHEN Year <= 2021 THEN Avg_CRI END),2) AS Past_year,
ROUND(AVG(CASE WHEN Year >= 2022 THEN Avg_CRI END),2) AS Recent_year
FROM DTV
GROUP BY State, Region
)
SELECT State,Region,
Overall_avg_risk, Best_year_risk, Worst_year_risk,
Past_year, Recent_year,
ROUND((Recent_year - Past_year),2) AS Risk_trend,
CASE
	WHEN Recent_year > Past_year THEN 'Getting Worse' 
	WHEN Recent_year < Past_year THEN 'Getting Better'
	ELSE 'Stable'
END AS Trend_direction
FROM SUMMARY
ORDER BY Overall_avg_risk DESC;