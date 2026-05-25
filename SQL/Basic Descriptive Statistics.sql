-- Generate overall descriptive statistics for energy system performance
-- This query computes key summary metrics (average, minimum, and maximum)
-- for demand, diesel generation, solar radiation, theoretical PV generation,
-- actual PV injection, and unused PV energy.
-- It provides a high-level overview of system behavior and performance ranges,
-- useful for understanding variability, capacity utilization, and energy balance.

SELECT
  ROUND(AVG(demand_kw),2) AS average_demand_kw,
  ROUND(MIN(demand_kw),2) AS minimum_demand_kw,
  ROUND(MAX(demand_kw),2) AS maximum_demand_kw,

  ROUND(AVG(diesel_generation_kw),2) AS average_diesel_generation_kw,
  ROUND(MIN(diesel_generation_kw),2) AS minimum_diesel_generation_kw,
  ROUND(MAX(diesel_generation_kw),2) AS maximum_diesel_generation_kw,

  ROUND(AVG(solar_radiation),2) AS average_solar_radiation,
  ROUND(MAX(solar_radiation),2) AS maximum_solar_radiation,

  ROUND(AVG(theoretical_pv_generation),2) AS average_theoretical_pv_generation,
  ROUND(MAX(theoretical_pv_generation),2) AS maximum_theoretical_pv_generation,

  ROUND(AVG(actual_pv_injection),2) AS average_actual_pv_injection,
  ROUND(MAX(actual_pv_injection),2) AS maximum_actual_pv_injection,

  ROUND(AVG(unused_pv_energy),2) AS average_unused_pv_energy,
  ROUND(MAX(unused_pv_energy),2) AS maximum_unused_pv_energy

FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`;