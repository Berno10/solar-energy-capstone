-- Analyze average solar radiation by hour of the day
-- This query calculates the average solar radiation values
-- for each hour to understand daily irradiation patterns
-- and their relationship with solar energy production.

SELECT
  EXTRACT(HOUR FROM PARSE_TIME('%H:%M', time)) AS hour,
  ROUND(AVG(solar_radiation), 2) AS average_solar_radiation
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
GROUP BY hour
ORDER BY hour;