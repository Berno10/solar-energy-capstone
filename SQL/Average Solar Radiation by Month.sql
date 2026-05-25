-- Analyze average solar radiation by operational period
-- This query calculates the average solar radiation levels
-- across different periods of the day to identify variations
-- in solar irradiation and how it changes throughout operational time segments.

SELECT
  period,
  ROUND(AVG(solar_radiation), 2) AS average_solar_radiation
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
GROUP BY period
ORDER BY period;