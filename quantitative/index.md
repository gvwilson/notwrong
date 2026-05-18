# Quantitative Methods: Controlled Experiments

<div class="callout" markdown="1">

-   Design a controlled experiment with proper randomization and control groups.
-   Interpret p-values and effect sizes without overstating what they show.
-   Estimate required sample size given a target statistical power.
-   Identify internal and external validity threats in an experimental design.

</div>

In 2005, Hakan Erdogmus and his colleagues published
a study of test-driven development [%b Erdogmus2005 %].
They recruited university students,
randomly assigned them to TDD or test-last conditions,
and measured code quality and productivity.
They found that TDD produced more tests and slightly better coverage,
but the effect on external code quality was not significant.
The study is remembered not for a dramatic finding but for being careful—and
for the researchers' candid discussion of what their careful design still could not rule out.

Controlled experiments are the gold standard for causal claims.
They are also expensive, difficult, and frequently misunderstood.

## Experimental Design

-   A [%g controlled_experiment "controlled experiment" %] manipulates
    one or more [%g independent_variables "independent variables" %]
    and measures their effect on one or more [%g dependent_variables "dependent variables" %]
    while holding other factors constant
-   The [%g treatment_group "treatment group" %] receives the intervention being tested;
    the [%g control_group "control group" %] does not
-   [%g randomization "Randomization" %] assigns participants to conditions randomly,
    which distributes unknown confounding variables evenly across groups
    -   The mechanism that makes causal claims defensible
-   [%g blinding "Blinding" %]
    -   In a [%g single_blind_study "single-blind study" %],
        participants do not know which condition they are in
    -   In a [%g double_blind_study "double-blind study" %],
        neither participants nor experimenters know until analysis
    -   Full blinding is rarely possible in software engineering studies:
        you cannot hide from a developer that they are using TDD

## The Null Hypothesis

-   The [%g null_hypothesis "null hypothesis" %] (H₀) is
    the assumption that there is no effect,
    i.e., that the treatment makes no difference
-   The [%g alternative_hypothesis "alternative hypothesis" %] (H₁) is
    that there is an effect
-   You never prove H₁:
    you either reject H₀ (when your data is inconsistent with "no effect")
    or fail to reject it
-   Failing to reject H₀ does not mean the null is true
    -   It may mean your study was not powerful enough to detect a real effect

## p-Values

-   A [%g p_value "p-value" %] is the probability of observing data
    at least as extreme as what you observed
    if the null hypothesis were true
    -   It is not the probability that the null hypothesis is true
    -   It is not the probability that your result is a false positive
    -   It is not the probability that you will replicate
-   p < 0.05 means that if there were no effect,
    you would see a result this extreme or more extreme less than 5% of the time by chance
-   The 0.05 threshold is a convention from the 1920s, not a law of nature
    [%b Fisher1925 %]

## Effect Size

-   [%g statistical_significance "Statistical significance" %]
    tells you whether an effect is likely to be real
-   [%g effect_size "Effect size" %] tells you how large it is
-   [%g cohens_d "Cohen's d" %] measures the difference between two means
    in standard deviation units:
    -   d = 0.2: small effect
    -   d = 0.5: medium effect
    -   d = 0.8: large effect
    -   These benchmarks are rough guides, not thresholds
-   A study with thousands of participants can find statistically significant effects
    that are too small to matter in practice
-   Always report effect size alongside p-values
    -   One without the other is incomplete

## Statistical Power and Sample Size

-   [%g statistical_power "Statistical power" %] is the probability that
    your study will detect an effect if one actually exists
-   Power depends on sample size, effect size, and the significance threshold (alpha)
-   A typical target is 80% power:
    you accept a 20% chance of a false negative
-   Most software engineering experiments are dramatically underpowered [%b Kampenes2007 %]
    -   Studies with 20-30 participants can only detect very large effects (d > 0.8)
-   The consequences of underpowering
    -   You miss real effects
    -   The effects you do detect are inflated
        (the [%g winners_curse "winner's curse" %])
-   Calculate required sample size before running the study, not after

## Blocking Variables

-   [%g blocking_variable "Blocking" %] controls a known [%g nuisance_variable "nuisance variable" %]
    by grouping experimental units before randomization,
    guaranteeing that its effect is distributed evenly across conditions
-   Randomization distributes unknown [%g confounding_variable "confounding_variables" %]
    (or "confounders")
    -   Blocking handles known ones explicitly
-   Example: developer experience
    -   A random assignment of 40 developers might give all the seniors to one group by chance
    -   Blocking first divides developers into experience strata,
        then randomizes within each stratum
-   Benefit:
    removing the nuisance factor's variance from the error term
    increases statistical power without adding participants
-   In a [%g within_subjects_design "within-subjects design" %],
    each participant applies both treatments to different tasks,
    acting as their own control
    -   Advantage: eliminates between-person variation entirely
    -   Disadvantage: vulnerable to [%g order_effects "order effects" %]
        -   Doing a task second is different from doing it first,
            regardless of technique
-   Whether and how the blocks were analyzed matters for interpreting the results
-   Many SE experiments on inspection and testing techniques are implicitly within-subjects
    -   Each person uses multiple methods on multiple programs

## Threats to Validity

-   Validity threats fall into four categories [%b Campbell1963 Wohlin2000 %]
-   Construct validity: does your measurement actually capture the concept you care about?
    -   Discussed [earlier](@/performance/)
-   [%g conclusion_validity "Conclusion validity" %]:
    did you use the right statistical procedure,
    and was the study powerful enough to detect an effect if one exists?
    -   Threats: underpowered design,
        violated test assumptions (e.g., applying a t-test to heavily skewed data),
        multiple comparisons without correction
-   Internal validity:
    can you conclude that the treatment caused the outcome?
    -   Threats: confounding variables, selection bias, [%g maturation_effect "maturation effects" %]
    -   SE-specific behavioral threats, which arise because people are the experimental subjects:
        -   Novelty effect (discussed [earlier](FIXME))
        -   [%g learning_effect "Learning effect" %]:
            participants improve on a later task through practice,
            making the later condition look better regardless of which technique it used
        -   [%g boredom_effect "Boredom effect" %]:
            performance declines as the experiment drags on; conditions applied later look worse
        -   [%g unconscious_formalization "Unconscious formalization" %]:
            participants apply methods more carefully than usual
            because they know they are being observed
-   [%g external_validity "External validity" %]: do your findings generalize
    beyond your sample and setting?
    -   Threats: students are not professional developers; a 90-minute task
        is not a six-month project; one programming language is not all
        programming languages
-   Many SE experiments have strong internal validity but weak external validity,
    which limits what you can conclude
-   Pair programming research illustrates the problem
    -   Most controlled experiments assigned students to pair or solo conditions
        on a small isolated task with a randomly assigned partner…
    -   …none of which reflects how pair programming is used in industry
    -   A grounded theory study of 60+ recorded sessions from a dozen companies
        found that what matters is the specific knowledge gap between partners…
    -   …which is the variable the experiments controlled away [%b Sadowski2019 %]

## Ethical Considerations

-   All of the consideration from [the previous lesson](@/qualitative/) apply
-   Random assignment to conditions:
    withholding a potentially beneficial tool from a control group requires justification
    -   "We want to measure the effect" is not sufficient
-   Blinding:
    if participants are not told which condition they are in,
    debrief them afterward

## Misconceptions

p < 0.05 means the result is probably true.
:   It means that if there were no effect,
    data this extreme would arise by chance less than 5% of the time.
    Whether the result reflects a real phenomenon also depends on
    the prior plausibility of the hypothesis
    and on whether the analysis was pre-specified,
    neither of which the p-value captures.

A study using students is worthless for understanding professional developers.
:   Student studies are not worthless, but they do have limited external validity.
    The appropriate response is to be specific about what the study can and cannot generalize to,
    not to dismiss it.

Statistical significance means practical significance.
:   An effect can be statistically significant (i.e., reliably detectable)
    while being too small to matter in practice.
    A 2% improvement in task completion time that requires retraining the whole organization
    is not a useful finding just because p < 0.001.

Not finding a significant effect means the treatment doesn't work.
:   Failing to reject the null hypothesis means the data are consistent with no effect.
    It does *not* mean no effect exists.
    An underpowered study will frequently miss real effects,
    and most software engineering experiments are underpowered.

## Check Understanding

<details markdown="1">
<summary markdown="1">A study reports p = 0.03. A colleague says "there's only a 3% chance this result is wrong." What is actually correct?/summary>

The correct interpretation is: if the null hypothesis were true (i.e., if there was no effect),
there would be a 3% chance of observing a result at least as extreme as this one by chance.
It does not mean there is a 3% chance the result is a false positive:
that probability depends on the prior probability that an effect exists,
which the p-value does not capture.
The colleague's statement is a common and consequential misinterpretation.

</details>

<details markdown="1">
<summary markdown="1">Why can't you conclude from a non-significant result (p > 0.05) that there is no effect?</summary>

A non-significant result means the data is consistent with the null hypothesis,
not that the null hypothesis is true.
The study may have been underpowered,
i.e.,
have too few participants to detect an effect that exists.
Absence of evidence is not evidence of absence,
especially in software engineering research where sample sizes are typically small.

</details>

<details markdown="1">
<summary markdown="1">A study of 500 developers finds that those using AI tools commit code 8% more frequently (p = 0.001, Cohen's d = 0.15). What should you conclude?</summary>

The effect is statistically significant (unlikely to be due to chance with this sample size)
but very small (d = 0.15 is below the conventional threshold for a "small" effect).
With 500 participants,
the study has enough power to detect tiny effects.
The practical significance is unclear:
an 8% increase in commit frequency may or may not reflect any meaningful change in productivity,
especially given the construct validity problems with using commits as a productivity proxy.

</details>

<details markdown="1">
<summary markdown="1">Identify the threat to internal validity in the following study design: "We introduced AI coding tools to our team in January and measured productivity (PRs merged) in February. Productivity increased 15%."</summary>

Many things may have changed between January and February,
so you cannot attribute the change to the AI tools without a control group.
This is a pre-post design (before and after the intervention) with no control,
which cannot rule out alternative explanations.
A stronger design would compare against a control group,
i.e., another team that did not receive the tool.

</details>

## Further Reading

-   [%b Anda2009 %]
-   [%b Basili1987 %]
-   [%b Fucci2013 %]
-   [%b Fucci2016 %]
-   [%b Fucci2017 %]
-   [%b Kohavi2008 %]
-   [%b Uyaguari2024 %]

## Exercises

<div class="exercise" markdown="1">

### Power Calculation (15 minutes)

*See [the appendix on statistics](@/stats/) for a worked example before trying this exercise.*

You want to study whether a new code review tool reduces defect escape rate.
From prior data,
you know the standard deviation of defect escape rate across teams is about 5 defects per release.
You want to detect a difference of 3 defects per release
(about a 60% reduction from a typical baseline of 5).
Using the formula n = 2(z_α + z_β)²σ²/δ² with α = 0.05 (z = 1.96) and 80% power (z = 0.84),
calculate the minimum number of teams per condition.
What does this tell you about the feasibility of running this study?

</div>

<div class="exercise" markdown="1">

### Design Critique (20 minutes)

Read the methods section of [%b Erdogmus2005 %].
List three design choices the researchers made;
for each,
explain why they made that choice
and describe one threat to validity it does not address.

</div>

<div class="exercise" markdown="1">

### Build Your Own (20 minutes)

Design a controlled experiment to test one of the following claims.
Specify the treatment and control conditions,
how you will assign participants,
what you will measure (and how),
a realistic sample size,
and two threats to external validity.

-   Pair programming reduces defect rates
-   Code review with AI assistance is faster than code review without it
-   Developers who write tests first produce better-designed code

</div>
