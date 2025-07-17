
--Inserting Data
-- I inserted:
-- 3 insurers
-- 20 patients
-- 25 billing entries
-- Claims will auto-generate via trigger on billing
-- Then, we’ll process a few claims

INSERT INTO insurers VALUES (1, 'Aetna Health');
INSERT INTO insurers VALUES (2, 'Blue Shield');
INSERT INTO insurers VALUES (3, 'MediPlus');

SELECT * FROM insurers;

INSERT ALL
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (1, 'Ananya Verma', DATE '1998-05-14', 'Aetna Health', SYSDATE - 12, 5000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (2, 'Rohan Mehta', DATE '1996-03-20', 'Blue Shield', SYSDATE - 4, 7000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (3, 'Ishaan Kulkarni', DATE '1997-07-10', 'MediPlus', SYSDATE - 20, 6000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (4, 'Kavita Joshi', DATE '2000-11-11', 'Blue Shield', SYSDATE - 7, 4000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (5, 'Manish Rao', DATE '1999-09-23', 'Aetna Health', SYSDATE - 3, 4500)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (6, 'Neha Shah', DATE '1998-02-28', 'MediPlus', SYSDATE - 10, 5500)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (7, 'Arjun Nair', DATE '1995-08-12', 'Aetna Health', SYSDATE - 14, 5000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (8, 'Simran Kaur', DATE '1996-12-15', 'Blue Shield', SYSDATE - 2, 6500)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (9, 'Vikas Patil', DATE '1997-06-06', 'MediPlus', SYSDATE - 9, 6000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (10, 'Divya Menon', DATE '1998-04-18', 'Aetna Health', SYSDATE - 5, 5000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (11, 'Rahul Bhat', DATE '1995-01-01', 'MediPlus', SYSDATE - 11, 7000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (12, 'Pooja Iyer', DATE '1996-02-03', 'Blue Shield', SYSDATE - 6, 4000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (13, 'Gaurav Jain', DATE '1997-08-14', 'Aetna Health', SYSDATE - 8, 5000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (14, 'Sneha Das', DATE '1999-12-25', 'MediPlus', SYSDATE - 15, 4500)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (15, 'Aditya Roy', DATE '1998-10-22', 'Blue Shield', SYSDATE - 13, 6000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (16, 'Tanvi Gupta', DATE '2000-05-05', 'Aetna Health', SYSDATE - 4, 5500)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (17, 'Harshita Singh', DATE '1997-03-11', 'MediPlus', SYSDATE - 2, 4800)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (18, 'Kunal Desai', DATE '1996-07-07', 'Blue Shield', SYSDATE - 6, 5300)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (19, 'Priya Reddy', DATE '1995-09-09', 'Aetna Health', SYSDATE - 7, 6000)
INTO patients (patient_id, name, dob, insurance_provider, admitted_on, coverage_limit) VALUES (20, 'Ashwin Pillai', DATE '1998-11-30', 'MediPlus', SYSDATE - 5, 5000)
SELECT * FROM DUAL;

-- DELETE FROM patients WHERE patient_id BETWEEN 1 AND 20;

SELECT * FROM patients;



INSERT INTO billing (bill_id, patient_id, amount) VALUES (1, 1, 1200);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (2, 2, 700);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (3, 3, 3000);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (4, 4, 1500);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (5, 5, 400);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (6, 6, 1200);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (7, 7, 500);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (8, 8, 300);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (9, 9, 2200);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (10, 10, 600);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (11, 11, 1800);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (12, 12, 900);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (13, 13, 1400);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (14, 14, 1200);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (15, 15, 3500);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (16, 16, 1000);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (17, 17, 200);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (18, 18, 800);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (19, 19, 1500);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (20, 20, 1300);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (21, 3, 600);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (22, 6, 700);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (23, 9, 400);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (24, 12, 1000);
INSERT INTO billing (bill_id, patient_id, amount) VALUES (25, 15, 900);

SELECT * FROM billing;

SELECT * FROM claims;

-- Process few claims
BEGIN
  pr_process_claim(1);
  pr_process_claim(2);
  pr_process_claim(3);
  pr_process_claim(5);
  pr_process_claim(7);
  pr_process_claim(10);
END;
/
