-- Flood Risk Database Setup
CREATE DATABASE flood_risk;

-- Create Flood risk Table
CREATE TABLE Flood_risk(
Record_Id VARCHAR(50) PRIMARY KEY,
Year INT NOT NULL,
Month VARCHAR(30) NOT NULL,
State VARCHAR(30) NOT NULL,
Region VARCHAR(100) NOT NULL,
Rainfall_mm DECIMAL(10,2) NOT NULL,
Avg_Temperature_c DECIMAL(10,2) NOT NULL,
Humidity_Percent DECIMAL(10,2) NOT NULL,
Flood_Incidents INT NOT NULL,
Flood_Severity VARCHAR(50) NOT NULL,
Population_Affected INT NOT NULL,
Houses_Distroyed INT NOT NULL,
Roads_Damaged_km FLOAT NOT NULL,
Agricultural_Loss_Tons DECIMAL(10,2),
Economic_Loss_Million_NGN DECIMAL(10,2),
Displaced_Persons INT NOT NULL,
Water_Level_m DECIMAL(10,2),
Drainage_condition VARCHAR(50) NOT NULL,
Waste_Blockage_level_hours VARCHAR(100) NOT NULL,
Emergency_Response_Time DECIMAL(10,2) NOT NULL,
Fatalities INT NOT NULL,
Climate_Risk_Index DECIMAL(10,2)
);

-- Verify Imported data
SELECT * FROM Flood_risk;