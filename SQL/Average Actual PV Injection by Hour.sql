SELECT
-- Analyze average photovoltaic (PV) energy injection by hour
-- This query calculates the average actual PV injection
-- for each hour of the day to identify daily solar
-- generation patterns and peak production periods.
  EXTRACT(HOUR FROM PARSE_TIME('%H:%M', time)) AS hour,
  ROUND(AVG(actual_pv_injection), 2) AS average_actual_pv_injection
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
GROUP BY hour
ORDER BY hour;