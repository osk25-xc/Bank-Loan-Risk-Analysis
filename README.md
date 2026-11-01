# Bank Loan & Risk Analysis

A portfolio analytics case study exploring loan application outcomes, approval patterns and credit-risk indicators using **synthetic practice data**.

## Project Overview
The goal is to examine how approval outcomes and risk indicators vary across regions, loan purposes and borrower profile measures. The analysis is intended to demonstrate an analytics workflow—not to make or recommend real lending decisions.

## Business Questions
- What is the overall loan approval rate?
- How do approval outcomes vary by region and loan purpose?
- How do credit-score bands and debt-to-income ratios differ by application status?
- What default patterns appear in the sample?

## Key Metrics
| Metric | Definition |
|---|---|
| Total Applications | Count of loan applications |
| Approved Loans | Count of applications marked approved |
| Approval Rate | Approved loans / total applications |
| Default Count | Count of applications marked as default |
| Default Rate | Defaults / relevant loan population |
| Average Credit Score | Mean credit score in the selected population |

## Tools & Technologies
- **Python:** pandas, matplotlib
- **SQL:** PostgreSQL
- **Power BI:** DAX starter measures

## Repository Structure
```text
Bank-Loan-Risk-Analysis/
├── data/
│   └── loans.csv
├── python/
│   └── analysis.py
├── sql/
│   └── analysis.sql
├── powerbi/
│   └── measures.dax
└── README.md
```

## Run the Analysis
1. Install the Python dependencies:
   ```bash
   pip install pandas matplotlib
   ```
2. Run the Python analysis:
   ```bash
   python python/analysis.py
   ```
3. Import `data/loans.csv` into PostgreSQL as `loans`, then execute `sql/analysis.sql`.
4. Use the measures in `powerbi/measures.dax` as a starting point for a Power BI report.

## Dataset & Limitations
The CSV contains **500 generated loan application records**. It contains no real borrower information. Results are illustrative and must not be used for credit scoring, underwriting or lending decisions.

## Author
**Omkar S. Kshirsagar** — Data Analytics Portfolio
