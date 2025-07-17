
-- ========================
-- 5. PROCEDURES
-- ========================

-- Process a claim: validate and approve/deny
CREATE OR REPLACE PROCEDURE pr_process_claim(p_claim_id NUMBER) IS
  v_requested NUMBER;
  v_bill_id NUMBER;
  v_patient_id NUMBER;
  v_remaining NUMBER;
BEGIN
  SELECT amount_requested, bill_id INTO v_requested, v_bill_id FROM claims WHERE claim_id = p_claim_id;
  SELECT patient_id INTO v_patient_id FROM billing WHERE bill_id = v_bill_id;

  v_remaining := fn_calc_coverage_left(v_patient_id);

  IF v_remaining < v_requested THEN
    UPDATE claims SET status = 'denied', amount_approved = 0, resolution_date = SYSDATE
    WHERE claim_id = p_claim_id;
  ELSE
    UPDATE claims SET status = 'approved', amount_approved = v_requested, resolution_date = SYSDATE
    WHERE claim_id = p_claim_id;
  END IF;
END;
/
