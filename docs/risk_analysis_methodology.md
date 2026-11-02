# Loan Risk Analysis Methodology

## Grain and population
Use one row per loan application. Confirm the application identifier is unique. If the source contains status-history rows, select the final valid status before calculating rates.

## KPI rules
- Approval rate = approved applications / applications with a resolved decision.
- Default rate = defaulted loans / loans in the defined repayment-eligible population.
- Average credit score uses valid, non-null scores; disclose the count used.
- Confirm whether debt-to-income is stored as a fraction or percentage.

## Validation
Reconcile rows to distinct application IDs; review null statuses; check score and DTI ranges; show group sizes with segment rates.

## Responsible interpretation
Synthetic data is descriptive practice material, not a basis for credit scoring, underwriting, or lending decisions.
