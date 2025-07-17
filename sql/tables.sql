-- 1. Patients Table
CREATE TABLE patients  (
    patient_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    dob DATE,
    insurance_provider VARCHAR2(100),
    admitted_on DATE
);

--2. Insurance Providers Table
CREATE TABLE insurers (
    insurance_id NUMBER PRIMARY KEY,
    provider_name VARCHAR2(100)
);

-- 3. Billing Table
CREATE TABLE billing (
    bill_id NUMBER PRIMARY KEY,
    patient_id NUMBER REFERENCES patients(patient_id),
    amount NUMBER,
    billing_date DATE DEFAULT SYSDATE
);

-- 4. Claims Table
CREATE TABLE claims (
    claim_id NUMBER PRIMARY KEY,
    bill_id NUMBER REFERENCES billing(bill_id),
    insurer_id NUMBER REFERENCES insurers(insurance_id),
    status VARCHAR2(20) CHECK (status IN ('pending', 'approved', 'denied')),
    amount_requested NUMBER,
    amount_approved NUMBER,
    claim_date DATE,
    resolution_date DATE
);

-- 5. Claim Audit Log
CREATE TABLE claim_audit_log (
    log_id NUMBER PRIMARY KEY,
    claim_id NUMBER,
    old_status VARCHAR2(20),
    new_status VARCHAR2(20),
    change_date DATE DEFAULT SYSDATE
);
