-- Bank Loan Risk Analysis starter queries
-- Adapt table and column names to the selected dataset.
-- Expected table: loans

-- Portfolio overview
SELECT COUNT(*) AS loan_count,
       SUM(loan_amount) AS total_funded,
       ROUND(AVG(loan_amount), 2) AS average_loan_amount
FROM loans;

-- Loan status mix
SELECT loan_status, COUNT(*) AS loan_count
FROM loans
GROUP BY loan_status
ORDER BY loan_count DESC;

-- Default rate by grade (adjust status labels to the dataset)
SELECT grade,
       COUNT(*) AS total_loans,
       SUM(CASE WHEN loan_status IN ('Default', 'Charged Off') THEN 1 ELSE 0 END) AS defaults,
       ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Default', 'Charged Off') THEN 1 ELSE 0 END)
             / NULLIF(COUNT(*), 0), 2) AS default_rate_pct
FROM loans
GROUP BY grade
ORDER BY default_rate_pct DESC;