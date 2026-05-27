# Running Studies in Your Organization

<div class="callout" markdown="1">

-   Design an ethically sound study appropriate for a workplace setting.
-   Apply Goal-Question-Metric (GQM) to define measurable research questions.
-   Scope a study given practical constraints on time, access, and data.
-   Navigate legal, HR, and management approval for internal research.
-   Share results responsibly when external publication is not possible.

</div>

In 2014,
Andrew Begel and Nachiappan Nagappan surveyed researchers and engineers at Microsoft
to find out which questions practitioners most want answered [%b Begel2014 %].
The top questions were practical: how do I hire the right people?
How do I improve team productivity?
How do I reduce technical debt?
The most credible methods, in practitioners' view,
were those that used their own data from their own systems.
Practitioners did not want controlled experiments or thematic analyses of interviews with strangers;
they wanted evidence from people like them, in contexts like theirs.
We created these lessons because you probably do too.

## Ethical Considerations

-   Reminder: research on people requires ethical oversight,
    even when it is "internal" research on your own employees
    -   Review [earlier discussion](@/qualitative/)
-   "It's just internal data" is not a free pass:
    the fact that you already have access to data
    does not mean using it for research is harmless
-   When monitoring developers—even with their consent—store data locally
    or give participants full control over what is shared
    -   Some developers will leave an organization
        rather than submit to monitoring they perceive as surveillance
-   Monitoring that erodes the psychological safety that predicts team performance,
    which defeats the purpose of the study before it begins

## Practical Study Designs for Practitioners

-   Most practitioners cannot run a randomized controlled trial:
    no random assignment, no control group, limited time, limited budget
-   Practical alternatives:
    -   [%g retrospective_analysis "Retrospective analysis" %]:
        study what already happened using data you already have
        (commit logs, ticket history, review comments)
    -   Interrupted time series:
        use a policy or tool change as a natural experiment
    -   [%g internal_survey "Internal survey" %]:
        structured survey of your own team, with clear scope and honest limitations
    -   [%g ab_testing "A/B testing" %]:
        if you are deploying software, random assignment of
        users to conditions is often feasible and already part of your infrastructure
-   Be honest with yourself about what design you actually have,
    not what you wish you had

## Identifying Waste as a Study Entry Point

-   If your organization is skeptical of productivity measurement
    but open to process improvement,
    frame the study around waste identification rather than output measurement
    -   Waste removal is often easier to prioritize than productivity improvement
        because it is clear what "done" looks like
-   Ask what work consumes effort without delivering value?
    -   The answer is usually less politically charged than, "Who is productive?"
    -   And often surfaces actionable interventions
-   [%b Sedano2017 %]'s nine waste categories are a useful starting checklist 
    -   See [earlier discussion](@/qualitative/)

## Scoping a Study

-   A study that tries to answer "does AI make our developers more productive?"
    cannot be answered without first answering what you mean by productive,
    which developers, at which tasks, over what time period
-   A scoped question:
    "Did the time to first review decrease for pull requests submitted after we deployed Claude
    compared to the three months before?"
-   Scoping criteria: one team, one metric, one comparison, one time period
-   If your scoped question does not answer what stakeholders actually need to know,
    that is important to know *before* you run the study

## Defining What to Measure: GQM

-   Knowing you want to study "productivity" is not enough:
    you need a specific, defensible measurement before you collect any data
-   The [%g gqm "Goal-Question-Metric (GQM)" %] approach
    provides a structured path from intent to measurement [%b Basili1994 %]
    -   Define the goal:
        what object are you studying, what property of that object,
        from whose viewpoint, and in what context?
    -   Generate the questions whose answers would tell you whether the goal was achieved
    -   Identify the specific, operationalized metric that answers each question
-   Example:
    -   Goal: "understand the impact of AI coding assistants on delivery speed,
        from the engineering manager's viewpoint, in our current sprint process"
    -   Question 1: does time-to-merge change after adoption?
    -   Question 2: does the volume of completed work change?
    -   Question 3: does defect rate change?
    -   Metric 1: median hours from PR open to merge, per sprint
    -   Metric 2: story points delivered per sprint
    -   Metric 3: bugs filed within 14 days of a PR merge
-   GQM makes implicit assumptions explicit:
    the choice of metric embeds a claim that this number measures what you care about
    -   And that claim can be challenged before you collect a single data point
-   If you cannot identify a metric for a question,
    either the question is not operationalizable (and should be addressed qualitatively)
    or the goal needs to be refined
-   Careful qualitative work can produce taxonomies that guide GQM measurement:
    -   [%b Sillito2008 %] analyzed programmers during change tasks
        and produced a catalog of 44 question types that developers ask
        when navigating an unfamiliar codebase
    -   [%b Ko2007 %] observed 17 developers at a large software company
        and identified 21 types of information need,
        most commonly awareness about artifacts and unavailable coworkers

## Iterating Your Study Design

-   A first study rarely answers the question you thought you were asking
    -   Metrics turn out to be noisier than expected
    -   The comparison group was not comparable
    -   The interesting result was a side-effect you did not plan to measure
-   Invest no more than a quarter of your budget in the first run
    -   Use what you learn to refine the question, metrics, and design
        before committing the rest
-   Common refinements after a first run:
    -   A variable you treated as a parameter (held constant)
        actually varied and affected results
        , so add it as a blocking variable or factor
    -   Your primary metric has low construct validity,
        so replace or supplement it
    -   The comparison was unfair:
        one group had more experience, better tooling, or easier tasks
-   Negative results from a first run are often more informative than a clean positive
    -   They tell you what the interesting question actually is
-   Document each iteration, including what changed and why
    -   This history makes later replication and interpretation possible

## Sharing Results Responsibly

-   Every study has limitations; state them *before* stakeholders ask
-   Distinguish between "we found no effect" and
    "our study was not designed to detect an effect"
-   Present uncertainty:
    confidence intervals, effect sizes, and sample sizes belong in results presented to management,
    not just in appendices
-   Resist pressure to oversell:
    a negative result honestly reported is more valuable than
    a positive result that cannot be replicated
-   Consider who will see the results and how they might be misused
    -   "What happens if this appears on Reddit?"

## Working with Legal, HR, and Management

-   Get legal and HR involved before you collect individual-level data;
    retroactive approval is harder than proactive review
-   Management may want to use study results for performance evaluation
    -   Clarify before you start whether this is permitted
        and communicate it to participants
-   Document your study design, analysis plan, and data handling before you begin
    -   This creates accountability and reduces the temptation
        to change the analysis after seeing results

## What to Do When You Cannot Publish

-   Write a memo or report with methods, results, limitations, and conclusions
-   Share it with the team that was studied,
    not just the leadership team that commissioned the study
    -   If nothing else, builds support for the next study
-   Archive the data and analysis scripts so the study can be revisited or extended
-   Be aware that internal research may be subject to legal discovery in litigation,
    especially if it touches on employment decisions

## Misconceptions

Internal data has no ethical constraints because the company already owns it.
:   Collecting data for operational purposes does not authorize using it for research purposes.
    The intended use of data matters,
    and research use requires separate consideration of consent, privacy, and potential harm.

A/B testing is a reliable all-purpose tool for internal studies.
:   A/B testing works well for product features where random assignment is natural
    and outcomes are measured automatically.
    Most questions about developer productivity do not fit this description.

Measuring developer productivity motivates developers to be more productive.
:   Developers subjected to daily productivity tracking often become
    less autonomous and more stressed,
    and may optimize the metric rather than the work.
    If measurement degrades the psychological conditions that produce good work,
    it defeats itself.

Negative results from an internal study are not worth reporting.
:   A well-run study that finds no effect is valuable:
    it prevents the organization from acting on a false assumption
    and contributes to a more accurate picture of what actually works.
    Suppressing negative results creates the same file-drawer problem inside organizations
    that it creates in academic publishing.

## Check Understanding

<details markdown="1">
<summary markdown="1">Why is "it's in the employment contract" insufficient as a basis for informed consent in a workplace study?</summary>

Informed consent requires that participants know specifically what is being studied,
what data is collected,
how it will be used,
and that they can withdraw without consequence.
An employment contract grants broad data collection rights as a condition of employment:
participants cannot meaningfully withdraw without leaving their job.
This creates a power imbalance that undermines the voluntariness of consent.
Research ethics require that consent be specific, informed, and genuinely voluntary.

</details>

<details markdown="1">
<summary markdown="1">A team wants to study the effect of mandatory code review on defect rates. They have six months of data before the policy and six months after. What design are they using, and what is its main threat to validity?</summary>

They are using an interrupted time series design.
The main threat to validity is that other things changed at the same time as the policy.
Without a control group that did not change its code review policy,
it is impossible to separate the effect of code review from other concurrent changes.
A stronger design would include a comparison team,
but that might not be possible.

</details>

<details markdown="1">
<summary markdown="1">A manager asks you to run a study on "which developers are least productive" using commit data. Identify two specific ethical concerns and one way to address each.</summary>

First,
using commit data as a productivity measure has low construct validity and can be gamed.
Address this by using outcome metrics (e.g., defect rates or feature delivery time)
rather than activity metrics.
Second,
identifying "least productive" individuals creates harm risk:
participants may face disciplinary action, feel surveilled, or experience increased anxiety.
Address this by committing in advance that
the study results will be used for process improvement,
not performance management,
and communicating this to all participants.

</details>

<details markdown="1">
<summary markdown="1">The following study report contains a presentational problem. Identify it: "We found that time-to-merge decreased by 18% after deploying the tool (p = 0.02). We recommend all teams adopt this tool immediately."</summary>

The recommendation does not account for the limitations of the study
or the uncertainty in the estimate.
An 18% decrease with p = 0.02 is statistically significant,
but the effect size, confidence interval, and practical significance are not reported.
More importantly,
"all teams" is an overgeneralization:
the study covers one team, one tool, one metric, and one time period.
A responsible recommendation would specify the conditions under which adoption seems warranted
and acknowledge the limitations of generalizing from a single internal study.

</details>

## Exercises

<div class="exercise" markdown="1">

### Ethics Review (15 minutes)

You want to study whether weekly one-on-one meetings between managers and developers
improve developer satisfaction and retention.
Write a one-page ethics review that identifies what data you would collect,
the risks to participants,
how you would obtain informed consent,
and how you would protect participant privacy against retaliation
if a participant rates their manager poorly.

</div>

<div class="exercise" markdown="1">

### Scope It Down (15 minutes)

Take one of the following broad questions and write a scoped version
that could be answered in three months with data available to a typical software team.
Specify the metric, the comparison, and the time period.

-   Does using an AI coding assistant improve code quality?
-   Does test-driven development reduce bug rates?
-   Does remote work affect team collaboration?

</div>

<div class="exercise" markdown="1">

### Write the Limitations (20 minutes)

You ran an internal A/B test:
30 developers used an AI code review tool for 8 weeks and 30 did not,
and the treatment group's time-to-merge decreased by 22%.
Write the "Limitations" section of the internal report.
Address sample size and power,
external validity,
alternative explanations,
and ethical considerations.

</div>
