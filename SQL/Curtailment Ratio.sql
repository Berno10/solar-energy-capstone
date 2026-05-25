-- Calculate average solar energy curtailment percentage
-- This query measures the proportion of unused PV energy relative to
-- theoretical PV generation, expressed as a percentage.
-- It provides an indicator of energy curtailment or inefficiency in
-- the photovoltaic system, excluding records where theoretical generation is zero
-- to avoid division errors.

SELECT
  ROUND(
    AVG(unused_pv_energy / theoretical_pv_generation) * 100,
    2
  ) AS curtailment_percentage
FROM `el-sena-solar-energy-analysis.solar_energy_data.el_sena_operational_data`
WHERE theoretical_pv_generation > 0;