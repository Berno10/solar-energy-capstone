-- Analyze average diesel generation by operational period
-- This query calculates the average diesel power generation
-- across different periods of the day to compare variations
-- in diesel dependency throughout operational time segments.

SELECT
  EXTRACT(HOUR FROM PARSE_TIME('%H:%M', time)) AS hour,
  ROUND(AVG(demand_kw), 2) AS average_demand_kw
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
GROUP BY hour
ORDER BY hour;