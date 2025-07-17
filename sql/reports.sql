
-- Report 1: All Processed Claims by Status
SELECT status, COUNT(*) AS total_claims, SUM(amount_requested) AS requested_total, SUM(amount_approved) AS approved_total
FROM claims
GROUP BY status;


-- Report 2: Patient-wise Coverage Usage Report
SELECT
  p.patient_id,
  p.name,
  p.coverage_limit,
  fn_calc_coverage_left(p.patient_id) AS remaining_coverage,
  (p.coverage_limit - fn_calc_coverage_left(p.patient_id)) AS used_coverage
FROM patients p;


-- Report 3: Insurer-wise Claims Summary
SELECT
  i.provider_name,
  COUNT(c.claim_id) AS total_claims,
  SUM(c.amount_requested) AS total_requested,
  SUM(c.amount_approved) AS total_approved
FROM claims c
JOIN insurers i ON c.insurer_id = i.insurance_id
GROUP BY i.provider_name;


--  Report 4: Audit Log of Status Changes
SELECT
  a.claim_id,
  p.name AS patient_name,
  a.old_status,
  a.new_status,
  a.change_date
FROM claim_audit_log a
JOIN claims c ON a.claim_id = c.claim_id
JOIN billing b ON c.bill_id = b.bill_id
JOIN patients p ON b.patient_id = p.patient_id
ORDER BY a.change_date DESC;
