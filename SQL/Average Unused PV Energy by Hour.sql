-- Analyze average unused photovoltaic (PV) energy by hour
-- This query calculates the average amount of unused PV energy
-- for each hour of the day to identify potential energy losses
-- and periods where generated solar energy is not fully utilized.

SELECT
  EXTRACT(HOUR FROM PARSE_TIME('%H:%M', time)) AS hour,
  ROUND(AVG(unused_pv_energy), 2) AS average_unused_pv_energy
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
GROUP BY hour
ORDER BY hour;