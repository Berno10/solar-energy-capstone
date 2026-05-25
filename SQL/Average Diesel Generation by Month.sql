-- Analyze average diesel generation by operational period
-- This query calculates the average diesel power generation
-- across different periods of the day to compare variations
-- in diesel dependency throughout operational time segments.

SELECT
  period,
  ROUND(AVG(diesel_generation_kw), 2) AS average_diesel_generation_kw
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
GROUP BY period
ORDER BY period;