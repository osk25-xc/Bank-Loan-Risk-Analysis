# Loan Risk Analysis Methodology

## Grain and population
Use one row per loan application. Confirm that the application identifier is unique before calculating rates. If the source contains multiple status-history rows per application, select the final valid status first.

## KPI rules
- Approval rate = approved applications / applications with a resolved decision.
- Default rate = defaulted loans / loans in the defined repayment-eligible population.
- Average credit score: calculate only for non-null, valid scores and disclose the count used.
- Debt-to-income ratio: confirm whether stored as a fraction or percentage before grouping.

## Validation checks
1. Reconcile total rows to distinct application IDs.
2. Review null or unexpected decision statuses.
3. Check credit-score and DTI ranges against the dataset specification.
4. Ensure default and approval flags are not treated as mutually exclusive unless the data rules say so.
5. Compare segment rates only when group sizes are shown.

## Responsible interpretation
The dataset is synthetic. Segment differences are descriptive, not evidence of causation or a basis for lending decisions. Avoid inferring protected characteristics or making individual-level recommendations.
