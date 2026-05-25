-- Analyze average photovoltaic (PV) energy injection by period
-- This query calculates the average actual PV injection
-- across different operational periods to compare
-- variations in solar energy generation throughout the day.
SELECT
  period,
  ROUND(AVG(actual_pv_injection), 2) AS average_actual_pv_injection
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
GROUP BY period
ORDER BY period;