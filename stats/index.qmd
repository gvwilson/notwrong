# Statistical Reference

This appendix summarizes the statistical concepts used in the lessons.
It is not a statistics course:
it is a reference for practitioners
who need to decode a methods section without getting a degree first.
Read it when a lesson references something you have forgotten,
or use it to check whether a study you are evaluating applied the right tool.

## Descriptive Statistics

-   The *mean* is the sum of values divided by the count;
    it is sensitive to outliers
-   The *median* is the middle value when sorted;
    use it when the distribution is skewed or when outliers are meaningful data points
    (e.g., response times, salaries)
-   The *mode* is the most frequent value;
    it is sometimes useful for categorical data
-   *Variance* is the average squared deviation from the mean;
    it is hard to interpret because it is in squared units
-   *Standard deviation* (SD) is the square root of variance;
    it is in the same units as the data
-   The *interquartile range* (IQR) is the distance between the 25th and 75th percentiles;
    it is more robust than SD when outliers are present
-   A *box plot* shows median, IQR, and outliers;
    it is more informative than a bar chart with error bars for most research purposes

## Probability and Distributions

-   A *probability distribution* describes how likely each possible value is;
    discrete distributions apply to counts, continuous distributions to measurements
-   The *normal distribution* is symmetric and bell-shaped;
    it appears often because the *central limit theorem* says that
    averages of many independent random variables tend toward normal,
    regardless of the original distribution
-   Many things in software engineering are *not* normally distributed:
    task completion times, file sizes, defect counts, and developer productivity
    are typically right-skewed (long tail of large values)
-   When normality is violated, use non-parametric tests
    (Mann-Whitney U test instead of t-test; Spearman's ρ instead of Pearson's r)
-   The *distribution of a sample mean* (the sampling distribution)
    is distinct from the distribution of individual observations;
    it has smaller spread (SD / √n) and is more nearly normal
    even when individual observations are not

## Hypothesis Testing

-   The *null hypothesis* (H₀) is the claim that there is no effect;
    the alternative hypothesis (H₁) is that there is one
-   You test H₀ by asking, "How likely is my data if H₀ were true?"
-   A *p-value* is this probability;
    small p-values are evidence against H₀
-   *Type I error* (false positive, α):
    rejecting H₀ when it is true;
    conventional threshold α = 0.05
-   *Type II error* (false negative, β):
    failing to reject H₀ when H₁ is true;
    power = 1 − β
-   A *confidence interval* (CI) gives a range of values consistent with the data;
    A 95% CI means that if the study were repeated many times,
    the interval would contain the true value 95% of the time
    -   CIs are usually more informative than p-values alone
        because they show direction and magnitude, not just significance

## Effect Sizes

-   Effect size measures the *magnitude* of an effect, independent of sample size
-   *Cohen's d* for comparing two means: d = (mean₁ − mean₂) / pooled SD
    -   d = 0.2: small; d = 0.5: medium; d = 0.8: large
    -   These benchmarks are rough guides from psychology; interpret in context
-   *Odds ratio* (OR):
    for binary outcomes, the ratio of odds in two groups;
    OR = 1 means no effect;
    OR > 1 means higher odds in the treatment group
-   *Relative risk* (RR):
    for binary outcomes, the ratio of proportions;
    more intuitive than OR but only valid for prospective studies
-   *Pearson's r*:
    correlation between two continuous variables;
    ranges from −1 to 1;
    r² is the proportion of variance in one variable explained by the other
-   *Spearman's ρ* (rho):
    rank-order correlation;
    use when the relationship is monotone but not linear,
    or when variables are ordinal

## Statistical Power and Sample Size

-   *Power* is the probability of detecting a real effect;
    usually targeted at 0.80
-   Power increases with larger sample size, larger true effect, and higher α
-   The required sample size for a two-sample t-test is approximately
    n = 2(z_α + z_β)²σ²/δ²
    where δ is the minimum detectable difference,
    σ is the population SD,
    z_α = 1.96 for α = 0.05,
    and z_β = 0.84 for 80% power
-   Most software engineering experiments are underpowered:
    typical sample sizes of 20–50 participants can only detect large effects
    (d > 0.8) reliably
-   *Post-hoc power analysis* (calculating power after a null result)
    is generally uninformative and should be treated with skepticism

## Multiple Comparisons

-   If you run k independent tests each at α = 0.05,
    the probability of at least one false positive is 1 − (0.95)^k
    -   k = 10: 40% chance of a false positive; k = 20: 64%
-   *Bonferroni correction*:
    use α/k as the threshold for each test;
    conservative (reduces power), but simple
-   *False discovery rate* (FDR, Benjamini-Hochberg):
    controls the expected proportion of false positives among rejected hypotheses;
    less conservative than Bonferroni for large numbers of tests
-   Exploratory analyses that test many hypotheses should be clearly labeled as exploratory;
    confirmatory claims require pre-registration or replication

## Common Tests and When to Use Them

| Test | When to use | Assumptions |
|---|---|---|
| Two-sample t-test | Compare means of two groups | Normality, approximately equal variance |
| Mann-Whitney U | Compare distributions of two groups | None (non-parametric) |
| Paired t-test | Compare means within pairs (before/after) | Paired differences are normal |
| Wilcoxon signed-rank | Paired comparison, non-parametric | Symmetric differences |
| Chi-square | Compare frequencies or proportions | Expected count ≥ 5 per cell |
| Pearson correlation | Linear relationship between two continuous vars | Bivariate normality |
| Spearman correlation | Monotone relationship; ordinal or skewed data | None |
| Linear regression | Model continuous outcome from predictors | Linearity, normality of residuals, homoscedasticity |

## Correlation vs. Causation

-   Correlation measures association; causation is a claim about mechanism
-   Three alternative explanations for a correlation between A and B:
    -   A causes B
    -   B causes A (reverse causation)
    -   C causes both A and B (confounding)
-   Randomization is the mechanism that makes causal claims defensible:
    random assignment distributes confounders evenly across conditions
-   Observational studies require additional assumptions to support causal claims
    (parallel trends for DiD, exclusion restriction for instrumental variables,
    no unmeasured confounders for regression)

## Worked Example: Power Calculation

Here is a worked example to show how the formula for statistical power is used in practice.

Suppose you want to study whether pair programming reduces defect density.
From prior studies, you know the standard deviation of defect density across
projects is about 4 defects per thousand lines of code (σ = 4). You want to
detect a difference of 3 defects per KLOC (δ = 3) — a meaningful reduction
that would justify the cost of pair programming.

Using the formula n = 2(z_α + z_β)²σ²/δ²:

-   z_α = 1.96 for α = 0.05 (two-tailed)
-   z_β = 0.84 for 80% power
-   σ = 4
-   δ = 3

n = 2(1.96 + 0.84)² × 16 / 9
  = 2 × (2.80)² × 16 / 9
  = 2 × 7.84 × 16 / 9
  = 250.88 / 9
  ≈ 28

You need about 28 projects per condition — 56 in total. If you can only
recruit 10 projects per condition, the study is underpowered: you might
miss a real effect. The formula also shows that detecting smaller effects
requires much larger samples: to detect δ = 1 (keeping σ = 4), you would
need n = 2 × 7.84 × 16 / 1 ≈ 251 projects per condition.

In practice, the hardest part of a power calculation is estimating σ and
choosing δ. If your estimate of σ is too low, you will underpower your
study; if your δ is unrealistically small, you will conclude the study is
infeasible when it may not be. When in doubt, use a range of plausible
values and report the sensitivity of your sample size to those choices.
