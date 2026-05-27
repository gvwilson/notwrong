# Reading Studies Critically

<div class="callout" markdown="1">

-   Apply a structured checklist to evaluate an empirical software engineering study.
-   Recognize HARKing, p-hacking, and publication bias in published work.
-   Identify conflicts of interest and explain how they distort findings.
-   Detect flexible operationalization as a source of bias.

</div>

In 2023,
McKinsey published "Yes, You Can Measure Software Developer Productivity" [%b McKinsey2023 %].
It proposed a framework involving dozens of metrics across multiple dimensions
and was widely cited by managers and executives
as justification for measuring individual developer output.
Researchers found the paper's methodology thin and its claims overclaimed.
The paper was not obviously fraudulent—it was something more insidious:
confident,
plausible,
and wrong in ways that non-specialists could not easily detect.
Kent Beck, one of the authors of the [%g agile_manifesto "Agile Manifesto" %},
wrote a pointed response:
the paper treated productivity as an objective fact to be measured
when it is actually a judgment about what matters,
made by people with interests [%b Beck2023 %].

The gap between belief and evidence runs deep.
[%b Devanbu2016 %] studied developers at Microsoft
and found that beliefs are strong,
but formed from personal experience rather than research,
and do not reliably correspond to actual data from the projects those developers work on.
This session gives you the critical reading skills needed to do better.

## How to Read a Research Paper

-   Start with the abstract: what claim is being made?
-   Jump to the methods before reading the results:
    given this design, what can this study actually establish?
-   Read the results section:
    do the numbers support the claims made in the abstract?
-   Read the discussion and limitations:
    what do the authors say they cannot conclude? What do they not say?
-   Check the references:
    are the cited sources used accurately?
-   An efficient order:
    abstract → methods → limitations → results → introduction
    (the introduction is usually the last thing written and the most polished,
    not the most informative)

## HARKing

-   [%g harking "HARKing" %] stands for Hypothesizing After Results are Known
-   A researcher runs an analysis,
    finds an interesting pattern,
    and then writes the paper as if that pattern was predicted in advance
-   HARKing inflates false positive rates because
    [%g exploratory_analysis "exploratory analysis" %] is presented as
    [%g confirmatory_analysis "confirmatory analysis" %]
-   [%g preregistration "Pre-registration" %] commits hypotheses and analysis plans
    before data collection, making HARKing visible
-   Signs of HARKing
    -   Vague hypotheses in the introduction that are suddenly very specific in the results
    -   An implausibly clean story with no unexpected findings
    -   No pre-registration

## p-Hacking

-   [%g p_hacking "p-hacking" %] means trying multiple analyses until you get p < 0.05,
    then reporting only that analysis
    -   Also called "data dredging," "specification searching,"
        or "researcher degrees of freedom"
-   Usually done by trying:
    -   different subsets of the data
    -   different covariates
    -   different outcome measures
    -   different time windows
-   With 20 independent tests at p < 0.05,
    you expect one false positive by chance
-   Signs of p-hacking:
    -   Many conditions with exactly one that is significant
    -   Results that depend on excluding a small number of observations
    -   No statistical correction for doing multiple comparisons

## Publication Bias

-   [%g publication_bias "Publication bias" %]:
    journals publish positive results (significant effects)
    more often than null results
-   Researchers internalize this and are less likely to submit [%g null_result "null results" %]
    (the [%g file_drawer_problem "file drawer problem" %])
-   Consequence: the published literature overestimates effect sizes
    and overstates how often phenomena replicate
-   [%g meta_analysis "Meta-analysis" %] tries to combine results across studies
-   [%g funnel_plot "Funnel plots" %] can reveal asymmetry suggesting publication bias
-   Pre-registration and registered reports
    (where journals commit to publish regardless of outcome)
    are partial remedies

## Conflicts of Interest

-   Industry-funded studies in software engineering
    often produce results favorable to their funders
    -   Not through fraud per se, but through study design choices, outcome selection, and framing
-   The GitHub Copilot study [%b Peng2023 %] was conducted by GitHub employees
    and published on arXiv without peer review before appearing in venues
-   Conflicts of interest should be disclosed
    -   Their absence in a paper is a yellow flag
-   Ask who benefits if this finding is true?
    Who paid for the study?
    Who employs the authors?

## Operationalization as a Site of Flexibility

-   A subtler form of researcher flexibility than p-hacking is operationalization:
    how an abstract concept like "productivity" is converted into a number
-   [%b Prechelt2000 %] showed that
    the same underlying data produced ratios of 105x, 17x, 11x, or 5x
    depending on which operationalization was used 
-   An operationalization chosen after seeing the data
    is functionally equivalent to p-hacking
    -   The analysis looks confirmatory but was actually exploratory
-   Signs of post-hoc operationalization
    -   Vague outcome definitions in the introduction that become very specific in the results
    -   Multiple outcome measures reported with emphasis on the most favorable one
    -   No pre-specified primary outcome
-   The same trap appears in ML research:
    Risse et al. found that 90% of machine learning vulnerability detection papers
    define the problem as function-level binary classification,
    yet context is almost always required to make a real vulnerability call [%b Risse2025 %]
    -   High benchmark scores arise from spurious correlations in the data
    -   The benchmark measures what is easy to operationalize,
        not what practitioners actually need
    -   This is the measurement-of-the-easy-half problem applied to an entire research subfield

## A Checklist for Evaluating an Empirical SE Study

-   Organizing questions around the four validity categories
    makes it easier to identify where a paper is weakest
    [%b Campbell1963 Wohlin2000 Juristo2001 %]
-   Conclusion validity:
    -   Was the sample large enough to detect an effect of the expected size?
    -   Are effect sizes reported alongside p-values?
    -   Were multiple comparisons corrected for?
-   Internal validity:
    -   Was there a control group or a credible counterfactual?
    -   Were participants randomly assigned to conditions?
    -   Could learning effects, novelty effects, or boredom explain the result?
    -   Are confounding variables identified and addressed?
-   Construct validity:
    -   Is the operationalization of key concepts explicit and defensible?
    -   Does the measurement actually capture what the claim is about?
-   External validity:
    -   Who are the subjects, and are they representative of the population
        the conclusions address?
    -   How closely does the task resemble real-world work?
    -   Are the conclusions proportionate to the evidence?
-   Reporting (needed for replication and honest interpretation):
    -   Are the study's factors defined precisely enough to reproduce it?
    -   Is the analysis plan described (not just the analysis that was run)?
    -   Are limitations discussed honestly?
    -   Is there a conflict of interest disclosure?
    -   Has the study been replicated or pre-registered?

## When the Outcome Measure Is a Dashboard

-   Many software engineering studies use dashboard data as their outcome
    -   Commit counts, burndown charts, ticket closure rates, deployment frequency
-   Dashboards embed value judgments and carry systematic risks
    -   They favor numbers over narrative, miss context, invite Goodhart's Law gaming,
        have data quality problems, and capture only what was explicitly tracked
        [%b Sadowski2019 %]
-   When evaluating a study that used dashboard data, ask:
    -   Could the metric have been gamed once participants knew it was being measured?
    -   Is the outcome actually visible in this data source, or is the data a proxy for a proxy?

## Misconceptions

Peer review detects p-hacking and HARKing.
:   Reviewers see the final manuscript, not the analysis history.
    Without access to pre-registered protocols or raw data,
    they cannot distinguish a cleanly hypothesized analysis
    from one that was tidied up after the fact.

Pre-registration guarantees that a study's results are valid.
:   It reduces one class of problem—undisclosed flexibility in analysis—by
    making deviations visible.
    It does not fix flawed designs, bad measurements, unrepresentative samples,
    or errors in execution.

Industry-funded research is always biased toward favorable results.
:   "Always" is too strong:
    some industry-funded studies are rigorous and honest.
    The concern is systematic, not universal:
    on average,
    funding source predicts outcome in ways that independent replication often does not support.

A well-cited paper is probably right. Citation counts reflect influence, not accuracy.
:   Papers get cited because they tell a useful or interesting story,
    whether or not the story holds up to scrutiny.
    Many highly-cited results in software engineering have failed to replicate.

## Check Understanding

<details markdown="1">
<summary markdown="1">What is the difference between p-hacking and HARKing? Can a study engage in both?</summary>

p-hacking is running many analyses and selectively reporting
the one that gives p < 0.05.
HARKing is presenting exploratory findings as if they were predicted hypotheses.
A study can engage in both if the researcher explores the data (p-hacking),
finds a pattern,
then writes the paper as if that pattern was hypothesized in advance (HARKing).
Both inflate false positive rates
and make the literature look more certain than it is.

</details>

<details markdown="1">
<summary markdown="1">A paper reports 12 comparisons across different subgroups and finds that one is significant at p = 0.04. Should you conclude there is a real effect? Why or why not?</summary>

No.
With 12 independent comparisons at α = 0.05,
you expect 0.6 false positives by chance.
A single significant result from 12 comparisons is entirely consistent with chance,
and with p = 0.04 (just barely significant),
it is especially suspicious.
The appropriate response is to apply a multiple comparisons correction
(such as [%g bonferroni_correction "Bonferroni" %], which would require p < 0.004 for any individual test)
and treat the result as preliminary until replicated.

</details>

<details markdown="1">
<summary markdown="1">What is the file drawer problem and how does it affect the credibility of published research?</summary>

The file drawer problem refers to the tendency for studies that found no significant effect
to go unpublished.
Because journals prefer positive results,
researchers are less ikely to submit null findings.
The consequence is that the published literature overrepresents positive findings:
if you read all studies on a topic,
you will see more support for effects than actually exists in the world.
Meta-analyses that include only published studies inherit this bias.

</details>

<details markdown="1">
<summary markdown="1">The following abstract contains a claim that is not supported by typical RCT design. Identify and explain the problem: "Our randomized controlled trial shows that developers using our tool are more productive. We therefore recommend that all engineering teams adopt it."</summary>

An RCT establishes that the treatment caused an outcome in the studied population
under the studied conditions.
"More productive" in an RCT typically means "faster at the specific task used in the study".
The recommendation to "all engineering teams" is an external validity claim:
that the effect generalizes beyond the study's sample
(often students or volunteers at one organization),
task (often artificial or narrow),
and context.
Most SE experiments cannot support broad adoption recommendations
because their external validity is limited.

</details>

## Exercises

<div class="exercise" markdown="1">

### Apply the Checklist (20 minutes)

Apply the checklist from this lesson to [%b Peng2023 %] or [%b McKinsey2023 %].
For each item,
give a one-sentence verdict and one piece of evidence from the paper
that supports your verdict.

</div>

<div class="exercise" markdown="1">

### Funnel Plot Interpretation (15 minutes)

Search for a meta-analysis of any software engineering practice
(code review, pair programming, TDD, etc.) that includes a funnel plot.
Describe what the funnel plot shows.
Is there evidence of publication bias?
If the funnel is asymmetric,
what does that suggest about the true effect size
compared to what the published literature reports?

</div>

<div class="exercise" markdown="1">

### Find the Spin (15 minutes)

Find a research paper or industry report about AI tools and developer productivity
published in the last two years.
Identify one place where the authors' conclusions go beyond what their methods can support
(what a statistician would call "spin".)
Write two sentences:
one quoting the overclaimed statement,
one describing what the evidence actually shows.

</div>
