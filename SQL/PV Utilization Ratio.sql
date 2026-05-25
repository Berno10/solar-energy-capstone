-- Calculate average photovoltaic (PV) utilization efficiency
-- This query measures how much of the theoretical PV generation
-- is actually injected into the system, expressed as a percentage.
-- It helps evaluate the efficiency of solar energy conversion and
-- system performance relative to potential generation capacity.

SELECT
  ROUND(
    AVG(actual_pv_injection / theoretical_pv_generation) * 100,
    2
  ) AS pv_utilization_percentage
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
WHERE theoretical_pv_generation > 0;