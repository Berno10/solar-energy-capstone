-- Analyze average unused photovoltaic (PV) energy by operational period
-- This query calculates the average unused PV energy across different
-- periods of the day to identify when solar energy is most frequently
-- curtailed or not utilized within operational segments.

SELECT
  period,
  ROUND(AVG(unused_pv_energy), 2) AS average_unused_pv_energy
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
GROUP BY period
ORDER BY period;