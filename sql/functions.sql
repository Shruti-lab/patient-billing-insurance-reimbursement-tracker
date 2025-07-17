
-- ========================
-- 4. FUNCTIONS
-- ========================

-- Calculate remaining coverage
CREATE OR REPLACE FUNCTION fn_calc_coverage_left(p_patient_id NUMBER) RETURN NUMBER IS
  v_limit NUMBER;
  v_used NUMBER;
BEGIN
  SELECT coverage_limit INTO v_limit FROM patients WHERE patient_id = p_patient_id;

  SELECT NVL(SUM(amount_approved), 0) INTO v_used
  FROM claims
  JOIN billing USING (bill_id)
  WHERE billing.patient_id = p_patient_id AND claims.status = 'approved';

  RETURN v_limit - v_used;
END;
/
