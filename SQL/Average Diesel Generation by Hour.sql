-- Analyze average diesel generation by hour
-- This query calculates the average diesel power generation
-- for each hour of the day to evaluate operational patterns
-- and identify periods of higher diesel dependency.
SELECT
  EXTRACT(HOUR FROM PARSE_TIME('%H:%M', time)) AS hour,
  ROUND(AVG(diesel_generation_kw), 2) AS average_diesel_generation_kw
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
GROUP BY hour
ORDER BY hour;