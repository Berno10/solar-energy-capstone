-- Compare average theoretical PV generation, actual PV injection,
-- and unused PV energy to evaluate system efficiency and energy losses.
-- This query provides a high-level summary of photovoltaic performance,
-- highlighting the gap between potential generation and actual utilization.

SELECT
  ROUND(AVG(theoretical_pv_generation),2) AS avg_theoretical_pv,
  ROUND(AVG(actual_pv_injection),2) AS avg_actual_pv,
  ROUND(AVG(unused_pv_energy),2) AS avg_unused_pv
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`;