# Defining Productivity

<div class="callout" markdown="1">

-   Explain construct validity and why it matters when measuring productivity.
-   Identify proxy metrics and their common failure modes.
-   Evaluate the DORA metrics as a worked example of operationalization.
-   Show how definitional choices shape study conclusions.

</div>

Before you can measure whether AI makes programmers more productive,
you have to decide what "productive" means.
That turns out to be surprisingly hard.

In 2021,
researchers at Microsoft published a framework called SPACE,
which argued that developer productivity has five dimensions:
Satisfaction and well-being,
Performance,
Activity, Communication and collaboration,
and Efficiency and flow [%b Forsgren2021 %].
The paper's central argument is that no single metric captures productivity,
and that organizations that optimize for one dimension (say, commit frequency)
often degrade others (say, satisfaction or code quality).
If you only measure what is easy to count, you will optimize for the wrong thing.

## Why "Programmer Productivity" Is Hard to Define

-   Productivity in manufacturing means output per unit of time
    (widgets per hour), which requires both output and time to be measurable
-   Software output is not homogeneous:
    a ten-line bugfix may be worth more than a thousand-line feature or vice versa
-   Much of software work is invisible:
    reading code, attending meetings, reviewing pull requests, helping colleagues
-   The effects of software work are often delayed:
    a decision made today may affect defect rates six months from now
-   Individual productivity is entangled with team and organizational factors
    that are hard to isolate
-   Most of a developer's time is not spent writing code:
    -   A field study tracking 20 developers over two weeks found that
        coding activities occupied roughly 25% of the working day on average
    -   Meetings, email, and coordination consumed most of the rest [%b Meyer2017 %]

## Construct Validity

-   [%g construct_validity "Construct validity" %] is the degree to which
    a measurement actually captures the concept it is supposed to capture
-   A metric has construct validity if changes in the metric
    reliably reflect changes in the underlying concept
-   Lines of code written per day has low construct validity as a productivity measure
    -   You can write more lines by making code worse
-   Construct validity is often assumed rather than demonstrated,
    especially in industry studies

## Proxy Metrics and Their Failure Modes

-   A proxy metric is a measurable quantity used as a stand-in for something harder to measure
-   Common proxies for developer productivity and their problems:
    -   Lines of code: incentivizes verbosity; punishes refactoring
    -   Commit frequency: incentivizes small, meaningless commits
    -   Story points completed: incentivizes inflation of estimates
    -   Pull requests merged: incentivizes trivial PRs; discourages complex work
    -   Bugs closed: incentivizes closing without fixing
-   [%g goodharts_law "Goodhart's Law" %]: when a measure becomes a target,
    it ceases to be a good measure [%b Goodhart1984 %]

<div class="callout" markdown="1">

In the early 1980s,
Apple measured programmer productivity by lines of code per day.
l Atkinson, who wrote the QuickDraw graphics library,
once submitted a timesheet showing -2000 lines:
he had replaced 2000 lines with a faster, shorter algorithm [%b Sadowski2019 %].
The metric penalized the improvement.

</div>

## The DORA Metrics as a Worked Example

-   The DevOps Research and Assessment (DORA) program identified four
    metrics that correlate with organizational performance [%b Forsgren2018 %]:
    -   [%g deployment_frequency "Deployment frequency" %]:
        how often code is deployed to production
    -   [%g lead_time_for_change "Lead time for changes" %]:
        time from commit to production
    -   [%g change_failure_rate "Change failure rate" %]:
        proportion of deployments causing failures
    -   [%g time_to_restore_service "Time to restore service" %]:
        time to recover from failures
-   These are [%g operationalization "operationalizations" %]:
    specific, measurable definitions of abstract concepts
-   DORA metrics have better construct validity than raw activity counts
    because they are tied to customer outcomes
-   They still have blind spots:
    a team can score well on DORA while building the wrong product

## How Definitional Choices Shape Conclusions

-   If you define productivity as "tasks completed per hour",
    AI tools look good (faster completion on well-defined tasks)
-   If you define productivity as "business value delivered per quarter",
    the picture is murkier (task completion speed may not be the bottleneck)
-   If you define productivity as "developer satisfaction and retention",
    the evidence is mixed and context-dependent
-   The choice of definition is a values choice as much as a technical one:
    it reflects what the organization cares about
-   Studies that do not explicitly state their operationalization of productivity
    cannot be compared with each other
-   Developer well-being is both a dimension of productivity and a precondition for it:
    -   A survey of 1,318 developers found that
        the top causes of unhappiness are being stuck on a problem,
        time pressure, and dealing with bad code,
        and that unhappiness predicts lower cognitive performance, disrupted flow,
        and reduced code quality [%b Graziotin2018 %]

## Reframing: Productivity as Waste Reduction

-   An alternative to measuring output is identifying waste:
    work that consumes effort without delivering value
-   A two-and-a-half-year study at Pivotal identified nine waste categories:
    building the wrong feature or product,
    mismanaging the backlog,
    rework,
    unnecessarily complex solutions,
    extraneous cognitive load,
    psychological distress,
    waiting and multitasking,
    knowledge loss,
    and ineffective communication [%b Sedano2017 %]
-   Waste is often easier to observe and quantify than output
-   Asking "what slows us down?" is frequently more actionable than
    "how do we measure productivity?"

## Misconceptions

Writing more code means being more productive.
:   This is the intuition behind lines-of-code metrics,
    and it is wrong in both directions:
    a developer who removes a thousand lines of tangled code
    and replaces them with a hundred clear ones has improved the codebase,
    not harmed it.

DORA metrics measure individual developer productivity.
:   They measure team and organizational delivery performance.
    Using deployment frequency or change failure rate to evaluate an individual developer
    conflates the level of analysis
    and ignores the team and system factors that dominate individual variation.

If a metric improves, the underlying thing it measures must be improving.
:   Goodhart's Law applies as soon as people know they are being measured.
    Metrics that look better because of behavior change around the measurement
    are not evidence of real improvement.

Productivity is an objective property that can be measured if you have the right data.
:   Every operationalization of productivity embeds a choice about what matters,
    such as speed, quality, satisfaction, or business value.
    Those are values choices, not measurement problems.

Better measurement tools produce better management.
:   Measurement is not management.
    Even complete data requires qualitative insight to explain causation,
    and organizations change constantly,
    making any model stale.
    Improving productivity requires behavior change,
    which requires judgment and trust,
    not more dashboards
    [%b Sadowski2019 %].

## Check Understanding

<details markdown="1">
<summary markdown="1">What is construct validity, and why does it matter when evaluating productivity metrics?</summary>

Construct validity is the degree to which a measurement captures
the concept it is meant to represent.
It matters because a metric with low construct validity will mislead you:
you can improve the number without improving the underlying thing you care about.
For productivity,
a metric like "commits per day" has low construct validity
because developers can increase it without becoming more productive
(and may actually become less productive while doing so).

</details>

<details markdown="1">
<summary markdown="1">A manager announces that their team's productivity increased 20% after adopting an AI coding assistant, measured by pull requests merged per week. Identify two specific threats to the validity of this conclusion.</summary>

First,
pull requests merged per week is a proxy metric with low construct validity:
developers may respond to the measurement by splitting work into smaller PRs
without increasing the actual value delivered.
Second,
this is a before-and-after comparison without a control group,
so any number of things that changed at the same time
(e.g., team composition, codebase maturity, or sprint planning practices)
could explain the increase.
Adoption of an AI tool is one possible cause among many.

</details>

<details markdown="1">
<summary markdown="1">The following research design contains a flaw related to operationalization. Identify and fix it: "We measured the impact of code review on productivity by counting defects closed in the month after code review was introduced."</summary>

The flaw is that "defects closed" is an activity metric that reflects ticket-closing behavior,
not actual defect elimination.
After introducing code review,
teams may close old tickets more aggressively or change their defect-reporting practices,
inflating the count.
A better operationalization would measure defect escape rate
(i.e., defects found in production per release)
before and after the intervention,
using a consistent defect definition.

</details>

## Further Reading

-   [%b ElEmam2001 %]
-   [%b Forsgren2021 %]
-   [%b Inozemtseva2014 %]
-   [%b Junior2009 %]
-   [%b SanchezRuiz2023 %]
-   [%b Tregubov2017 %]

## Exercises

<div class="exercise" markdown="1">

### Operationalize It (15 minutes)

Choose one of the following abstract concepts and write a specific,
measurable operationalization for it.
Then write one paragraph explaining the ways your operationalization might fail to capture the concept:

-   Code quality
-   Team collaboration
-   Developer satisfaction
-   Onboarding effectiveness

</div>

<div class="exercise" markdown="1">

### DORA in the Wild (20 minutes)

Look up the most recent State of DevOps Report (published annually by Google Cloud / DORA).
Find one claim about high-performing teams and trace it back to the specific metric used.
Then explain what this metric does not capture that you would want to know before acting on the claim?

</div>

<div class="exercise" markdown="1">

### Goodhart's Law in Practice (10 minutes)

Think of a metric you have seen used to evaluate developer performance
at your current or a previous organization,
or from a case study you have read.
Describe one specific way that metric was or could be gamed,
i.e.,
how someone could improve the number without improving the thing
the number is supposed to measure.

</div>
