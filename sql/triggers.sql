
-- ========================
-- 3. TRIGGERS
-- ========================


-- Create claim on billing insert
CREATE OR REPLACE TRIGGER trg_create_claim
AFTER INSERT ON billing
FOR EACH ROW
DECLARE
  v_insurance_id NUMBER;
BEGIN
  SELECT insurance_id INTO v_insurance_id
  FROM insurers
  WHERE provider_name = (SELECT insurance_provider FROM patients WHERE patient_id = :NEW.patient_id);

  INSERT INTO claims (
    claim_id, bill_id, insurer_id, status, amount_requested, claim_date
  ) VALUES (
    claims_seq.NEXTVAL,
    :NEW.bill_id,
    v_insurance_id,
    'pending',
    :NEW.amount,
    SYSDATE
  );
END;
/

-- Audit claim status changes
CREATE OR REPLACE TRIGGER trg_claim_audit_log
AFTER UPDATE ON claims
FOR EACH ROW
WHEN (OLD.status != NEW.status)
BEGIN
  INSERT INTO claim_audit_log (
    log_id, claim_id, old_status, new_status
  ) VALUES (
    claim_audit_seq.NEXTVAL, :OLD.claim_id, :OLD.status, :NEW.status
  );
END;
/
