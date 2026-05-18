# Observational Studies and Natural Experiments

<div class="callout" markdown="1">

-   Distinguish observational studies from controlled experiments.
-   Identify common biases in repository mining and other archival methods.
-   Explain the control-validity trade-off in study design.
-   Distinguish correlation from causation when interpreting observational findings.

</div>

In 2014,
Eirini Kalliamvakou and her colleagues published a paper titled
"The Promises and Perils of Mining GitHub" [%b Kalliamvakou2014 %].
They systematically documented the ways in which
GitHub repository data is not a representative sample of software development:
inactive repositories,
personal experiments,
class assignments,
and mirrored projects all appear in the data alongside real production software.
The paper did not say "don't use GitHub data".
It said:
be specific about what you are measuring,
because the data does not mean what you think it means.

## What Observational Studies Are

-   An [%g observational_study "observational study" %] measures the world as it is,
    without manipulating any variables
-   You observe what people do,
    what code looks like,
    what repositories contain
-   You do *not* assign anyone to a treatment group
-   Advantages: real-world behavior, large datasets,
    no ethical concerns about withholding interventions,
    no Hawthorne effect from artificial conditions
-   Disadvantage:
    you cannot establish causation because you cannot rule out confounding variables

## Mining Software Repositories

-   [%g msr "Mining software repositories" %] (MSR) extracts data
    from version control systems, issue trackers, code review tools, and CI/CD logs
-   GitHub, GitLab, and similar platforms expose APIs
    that make large-scale data collection straightforward
-   Common MSR datasets: commit history, issue lifecycles, code review comments,
    contributor networks, dependency graphs
-   But:
    -   Many repositories are not active software projects
    -   Pull requests are used differently across teams (some merge locally)
    -   Contributor counts overestimate team size
    -   Stars and forks measure visibility, not quality

## Bias Types

-   Selection bias: open-source projects on GitHub are not representative
    of all software projects
-   Developers who share their code publicly differ from those who do not
-   [%g survivorship_bias "Survivorship bias" %]:
    you only see projects that still exist
    -   Failed or abandoned projects leave incomplete records
-   Confounding:
    the variable you are measuring correlates with an unmeasured variable that is the real cause
    -   Example:
        projects that use more tests also tend to have more experienced developers,
        so you cannot attribute lower defect rates to testing alone

## The Control-Validity Trade-off

-   Every study design makes a trade-off between internal and external validity
     [%b Campbell1963 Wohlin2000 %]
-   Controlled experiments maximize internal validity
    -   Randomization distributes confounders evenly, making causal claims defensible
    -   The cost is artificiality: the lab task is not the real job
-   Observational studies maximize external validity
    -   You are watching real developers on real work
    -   The cost is that confounding variables cannot be ruled out
-   [%g quasi_experimental_design "Quasi-experimental designs" %] sit in between:
    -   They use real-world interventions but without full randomization
    -   Accept some ambiguity about causation in exchange for greater realism
-   No single design is always better
    -   The right choice depends on whether you need a causal claim
         or a realistic estimate in the wild
-   A mature research program uses all three:
    -   Controlled experiments to establish that X can cause Y
    -   Quasi-experiments to estimate the effect size in realistic settings
    -   Observational studies to establish that the phenomenon exists at scale in practice

## Quasi-Experimental Designs

-   [%g difference_in_differences "Difference-in-differences" %] (DiD)
    compares the change in outcome for a treated group
    against the change for a control group over the same period
    -   Requires a "parallel trends" assumption:
        the two groups would have changed similarly if neither had been treated
-   [%g interrupted_time_series "Interrupted time series" %] (ITS)
    looks for a change in trend at the point when an intervention was introduced
    -   Requires enough data before and after the intervention to estimate the trend
    -   Example:
        measuring defect rates before and after a company mandates code review,
        using the trend line to distinguish the effect from natural improvement over time

## Natural Experiments

-   A [%g natural_experiment "natural experiment" %] uses real-world variation
    that was not created by the researcher but that approximates random assignment
-   Examples in software engineering:
    -   A policy change that applies to some teams but not others at the same time
    -   A tool being made available to some offices due to licensing constraints
    -   A GitHub outage that forced some developers to work differently for a period
-   Natural experiments can support stronger causal claims than pure observational studies
    if the variation is plausibly independent of the outcome

## Field Study Design

-   [%g longitudinal_study "Longitudinal field studies" %]
    observe participants over weeks or months in their actual work environment,
    bridging the gap between lab experiments and pure observational analysis
-   Define acceptance criteria before you begin:
    minimum participation duration,
    minimum activity thresholds,
    or minimum number of tasks completed
-   Report dropout transparently
-   A study of Mylyn (a task-focused IDE plugin) recruited 99 developers,
    but only 16 met the pre-specified coding activity thresholds
    -   The 6:1 funnel was reported honestly and shaped interpretation of the results
        [%b Sadowski2019 %]

## Correlation and Causation

-   Empirical knowledge about a relationship comes in three levels [%b Wohlin2000 %]
-   Descriptive: patterns observed across cases with no quantified relationship and no claim about cause
    -   "Projects that adopt code review tend to have fewer defects"
-   Correlational: a quantified relationship between variables,
    but still without establishing direction or causation
-   Causal: X causes Y,
    established by ruling out all alternative explanations through randomization
    or a strong natural experiment
-   Moving from descriptive to correlational requires measurement and statistical analysis
-   Moving from correlational to causal requires study design
    that prevents confounders from being the explanation
-   Most published SE research sits at the descriptive or correlational level
    but is often reported as if it were causal
    -   This is the most common source of misinterpretation
-   Standard alternative explanations for an observed correlation
    -   Reverse causation (B causes A)
    -   Confounding (C causes both A and B)
    -   Coincidence

## Misconceptions

A large enough sample turns correlation into causation.
:   Sample size increases the precision of an estimate, not its causal interpretation.
    An observational study with a million data points is still observational:
    you have not manipulated anything, and confounders remain.

GitHub data represents software development.
:   Open-source projects on GitHub are a small, self-selected slice of
    the software that actually gets built.
    Commercial software, government systems, and embedded code
    are largely invisible to MSR studies.

Including a confounder as a control variable in a regression removes its effect.
:   You can only control for confounders you have measured and measured accurately.
    Unmeasured confounders,
    and those measured with error,
    continue to bias your estimates even after "controlling for" them.

Natural experiments are as reliable as randomized controlled trials.
:   Natural experiments require assumptions like parallel trends in difference-in-differences
    that cannot be tested with the data available.
    They are stronger than raw observational studies but weaker than true randomization.

## Check Understanding

<details markdown="1">
<summary markdown="1">What is the difference between an observational study and a controlled experiment?</summary>

In a controlled experiment,
the researcher assigns participants to conditions (treatment and control)
and manipulates the independent variable.
This allows causal claims because randomization distributes confounding variables evenly.
In an observational study,
the researcher measures the world as it is without manipulation.
Observational studies can detect correlations and (with care) support causal inference,
but they require additional assumptions like parallel trends in DiD that experiments do not.

</details>

<details markdown="1">
<summary markdown="1">A study mines GitHub data and finds that projects with more frequent releases have fewer open issues. A blog post says "releasing frequently reduces issue backlogs." What is wrong with this interpretation?</summary>

The study shows a correlation, not causation.
Several alternative explanations are equally consistent with the data:
projects with better-resourced teams might both release more often
and close issues faster (confounding);
projects that close issues might release more often as a result (reverse causation);
the projects might differ in type or maturity in ways that explain both patterns.
Without randomization or a natural experiment,
the causal direction cannot be established from this data.

</details>

<details markdown="1">
<summary markdown="1">What is survivorship bias, and why is it a particular concern when studying software project success using GitHub data?</summary>

Survivorship bias occurs when you only analyze cases that survived a selection process,
missing the failed cases.
On GitHub, abandoned projects, failed startups, and discontinued tools are either deleted or go silent.
A study of "successful open-source projects" based on currently active repositories
excludes all the projects that tried the same practices and failed.
This makes successful practices look more predictive than they are.

</details>

<details markdown="1">
<summary markdown="1">A company introduces mandatory code review for Team A in January. Team B does not change its practices. Both teams' defect rates decline over the year. Explain how a difference-in-differences analysis would determine whether code review had an effect.</summary>

DiD compares the change in Team A's defect rate to the change in Team B's defect rate
over the same period.
If both teams declined by the same amount,
that suggests the decline was due to factors affecting both teams
(e.g., improved tooling, team learning).
If Team A declined more than Team B,
the excess decline is attributed to the code review intervention,
under the assumption that without the intervention,
both teams would have changed similarly (the parallel trends assumption).

</details>

## Further Reading

-   [%b AlencarDaCosta2017 %]
-   [%b Aranda2009 %]
-   [%b Gold2020 %]
-   [%b Gote2022 %]
-   [%b Hemmati2013 %]

## Exercises

<div class="exercise" markdown="1">

### Spot the Bias (15 minutes)

Read the abstract and methods section of a paper that uses GitHub data
to study software development practices
(any paper from the MSR conference proceedings will probably work).
Identify one specific example of selection bias, survivorship bias, or confounding
that the paper either acknowledges or does not address.
Briefly explain how it affects the conclusions.

</div>

<div class="exercise" markdown="1">

### Design a Natural Experiment (20 minutes)

A large technology company is rolling out an AI coding assistant
to its engineering teams over six months.
Some teams will get it first,
and others will get it later
based on the order in which their managers signed up.
Design an observational study that treats this rollout as a natural experiment.
Specify what you would measure,
how you would use the staggered rollout as a source of variation,
one threat to the parallel trends assumption,
and one data source you would need access to.

</div>
