---
title: How to Not Be Wrong About AI
---
<section class="slide" markdown="1">
<div class="center">
<h1>How To Not Be Wrong About AI</h1>
<br>
<br>
<p>Greg Wilson</p>
<p>June 2026</p>
<p><a href="http://third-bit.com/notwrong/">http://third-bit.com/notwrong/</a></p>
</div>
</section>
<section class="slide" markdown="1">

## What This Talk Is About

-   AI coding tools are everywhere, and so are claims about what they do
-   In 2023, GitHub announced their tools made developers 55% faster
-   That number appeared in every executive presentation for a year
-   This workshop teaches you how to tell if you should believe it or not

</section>
<section class="slide" markdown="1">

## Why Media Coverage Fails You

-   Journalists rarely read past the abstract of research reports
-   Abstracts rarely report limitations
-   People rarely publish negative results
-   Press releases are written to generate coverage, not accuracy
-   Conflicts of interest are common
    -    Most AI productivity studies are funded by the companies selling the tools

</section>
<section class="slide" markdown="1">

## Empirical Software Engineering

-   **Empirical software engineering** (ESE) uses observation and experiment to study how software is built
-   It draws on psychology, sociology, economics, and statistics
    as well as computer science
-   The field has existed since the 1960s
-   Bad news: most studies don't address things practitioners actually care about [%b Begel2014 %]
-   Good news: "most" isn't "all"

</section>
<section class="slide" markdown="1">

## The Question You Actually Need to Answer

-   "Is AI helping my team?" sounds simple
-   But it requires answering:
    -   Helping with what?
    -   Measured how?
    -   Compared to what?
-   These are not pedantic questions
-   The answer you get depends entirely on how you **operationalize** them

</section>
<section class="slide" markdown="1">

## For Example

-   Prechelt measured 73 professional developers solving the same programming task
    and found completion times ranged from 0.6 to 63 hours (i.e., 105X) [%b Prechelt2000 %]
-   After controlling for programming language the ratio shrank to 17X
-   With a careful definition of "more productive" it shrank further to 5X
-   The answer depends a lot on exactly what question is asked

</section>
<section class="slide" markdown="1">

## Claims, Studies, and Evidence

-   A **claim** is an assertion: "AI tools make programmers more productive"
-   A **study** is a systematic attempt to test a claim
-   **Evidence** is what a study produces, and it varies in quality
-   One study with a nice headline can change hiring practices and university curricula
    before anyone checks whether it replicates

</section>
<section class="slide" markdown="1">

## Why "Productivity" Is Hard to Define

-   Manufacturing productivity means widgets per hour: both terms are measurable
-   Software output is not homogeneous: a ten-line bugfix may be worth more than a thousand-line feature
-   Much of software work is invisible: reading, reviewing, helping colleagues
    -   A field study found developers only spend 25% of their day actually writing code [%b Meyer2017 %]
-   [%b Sadowski2019 %] is an entire book devoted to "this is really hard"

</section>
<section class="slide" markdown="1">

## Construct Validity and Proxy Metrics

-   **Construct validity** is the degree to which a measurement captures the concept it is meant to represent
-   Lines of code written per day has low construct validity as a productivity measure
    -   You can write more lines by making code worse
-   A **proxy metric** stands in for something harder to measure directly
    -   Common proxies: lines of code, commit frequency, story points, pull requests merged
-   **Goodhart's Law**: when a measure becomes a target, it ceases to be a good measure
    -   Particularly when people feel their jobs are threatened…

</section>
<section class="slide" markdown="1">

## What You Can and Cannot Measure

-   The DORA metrics have better construct validity than activity counts [%b Forsgren2018 %]
    -   Deployment frequency, lead time, change failure rate, time to restore
-   They are tied to customer outcomes rather than developer busyness
-   They still have blind spots: a team can score well while building the wrong product

</section>
<section class="slide" markdown="1">

## The Big Three Mistakes

-   Counting lines of code generated
    -   Measures verbosity, not value
-   Timing artificial tasks
    -   A 90-minute greenfield task does not predict real work
-   Measuring only the easy half
    -   AI makes code generation faster,
        but doesn't count review time,
        debugging confidently wrong suggestions,
        and security vulnerabilities

</section>
<section class="slide" markdown="1">

## Bias and Baselines

-   Before/after with no control group
    -   You cannot separate the AI effect from anything else that changed
-   Asking developers if they feel more productive
    -   The **novelty effect** inflates self-reports for weeks
    -   Feeling productive is not the same as being productive
-   Comparing volunteers to non-volunteers
    -   Early adopters are usually already higher performers

</section>
<section class="slide" markdown="1">

## Metrics That Mislead

-   Treating adoption rate as a success metric
    -   It measures whether the tool is installed, not whether it helps
-   Treating suggestion acceptance rate as a quality signal
    -   Developers under pressure accept more suggestions, including insecure ones [%b Pearce2022 %]
-   Comparing AI to nothing
    -   the relevant question is whether AI outperforms the alternatives developers already have

</section>
<section class="slide" markdown="1">

## Qualitative Methods: When and Why

-   **Qualitative methods** are for when you do not yet know what to measure
-   They answer "why" and "what is happening here" rathr than "how much"
-   A survey of 410 developers about AI tools revealed
    where AI actually helps and where it gets in the way [%b Liang2024 %]
    -   Invisible to any study measuring only task completion times
-   The question determines the method, not preference or habit

</section>
<section class="slide" markdown="1">

## Designing Good Interviews and Surveys

-   **Semi-structured interviews** have a guide but allow follow-up
    -   Consistent enough to compare, flexible enough to surface surprises
-   **Open questions** invite narrative; **closed questions** invite classification
-   Avoid **leading questions**: "Don't you find it faster?" assumes the answer
-   Pilot your survey with 3–5 people before distributing it

</section>
<section class="slide" markdown="1">

## Thematic Analysis

-   **Open coding**: read through the data and tag segments with descriptive labels
-   Use **gerund coding**: "avoiding AI for security tasks" rather than "AI distrust"
    -   This preserves what participants are actually doing
-   A theme is a claim you could write as a sentence, not a bucket for related quotes
-   Stop collecting data when new interviews stop introducing new codes [%b Braun2019 %]

</section>
<section class="slide" markdown="1">

## Controlled Experiments

-   A **controlled experiment** manipulates one variable and measures its effect while holding others constant
-   **Randomization** assigns participants to conditions randomly, distributing unknown **confounders** evenly
    -   This is the mechanism that makes **causal claims** defensible
-   **Full blinding** is rarely possible in software engineering:
    -   you cannot hide from a developer that they are using TDD

</section>
<section class="slide" markdown="1">

## p-Values: What They Are and Are Not

-   A p-value is the probability of observing data at least as extreme as yours
    if nothing was actually happening
-   It is not the probability that the null hypothesis is true
-   It is not the probability that you will replicate
-   p < 0.05 is a convention from the 1920s, not a law of nature

</section>
<section class="slide" markdown="1">

## Effect Size Matters

-   **Statistical significance** tells you whether an effect is likely to be real
-   **Effect size** tells you how large it is
-   A study with thousands of participants can find statistically significant effects
    that are  too small to matter in practice
-   Always report effect size alongside p-values; one without the other is incomplete
    -   Equally, if a study doesn't report both, it probably has other flaws as well

</section>
<section class="slide" markdown="1">

## Most SE Experiments Are Underpowered

-   **Statistical power** is the probability of detecting an effect if one exists
-   Studies with 20–30 participants can only detect very large effects [%b Kampenes2007 %]
-   Most software engineering experiments fall far below this threshold
-   The effects you do detect in underpowered studies are inflated
    —   The **winner's curse** (reluctance to publish negative results)

</section>
<section class="slide" markdown="1">

## Observational Studies: Watching the World

-   **Observational studies** measure the world as it is, without manipulating variables
-   Advantages: real-world behavior, large datasets, no ethical concerns about withholding interventions
-   Disadvantage: you cannot establish causation because confounding variables cannot be ruled out
-   Mining software repositories (MSR) is the most common approach

</section>
<section class="slide" markdown="1">

## Looking Where the Light Is

-   GitHub data is not a representative sample of software development
-   Inactive repositories, class assignments, personal experiments, and mirrors
    all appear alongside production software
-   **Survivorship bias**: you only see projects that still exist
-   Example: projects with more tests also tend to have more experienced developers
    —   You cannot attribute lower defect rates to testing alone

</section>
<section class="slide" markdown="1">

## Reading Studies Critically

-   Start with the abstract: what claim is being made?
-   Jump to the methods before reading the results
    -   Given this design, what can this study actually establish?
-   Read the limitations section
    -   What do the authors say they *cannot* conclude?
    -   If this feels flimsy, the rest of the paper probably is as well

</section>
<section class="slide" markdown="1">

## HARKing and p-Hacking

-   **HARKing** (Hypothesizing After Results are Known):
    writing a paper as if a pattern found during analysis was predicted in advance
-   **p-hacking**: trying multiple analyses until you get p < 0.05, then reporting only that analysis
    -   With 20 independent tests at p < 0.05, you expect one false positive by chance
-   **Pre-registration** commits hypotheses before data collection, making both problems visible
-   And if authors haven't shared data, there's a good chance there's an error in their work [%b Wicherts2011 %]

</section>
<section class="slide" markdown="1">

## A Checklist for Evaluating a Study

-   **Conclusion validity**:
    Was the sample large enough?
    Are effect sizes reported?
-   **Internal validity**:
    Was there a control group?
    Was assignment random?
    Could novelty or learning effects explain the result?
-   **Construct validity**:
    Does the measurement actually capture the claim?
-   **External validity**:
    Who are the subjects, and are they representative of the population the conclusions address?

</section>
<section class="slide" markdown="1">

## Running Studies in Your Organization

-   Most practitioners don't have the time or the skills to run a randomized controlled trial
-   Practical alternatives:
    -   Retrospective analysis of data you already have
    -   A/B testing
    -   *Anonymized* internal surveys
-   Be honest about what design you actually have, not what you wish you had
-   Get legal and HR involved before you collect individual data
    -   Having it done by someone outside your org makes honest answers a bit more likely

</section>
<section class="slide" markdown="1">

## Goal-Question-Metric

-   **GQM** provides a structured path from intent to measurement [%b Basili1994 %]
-   Define the **goal**: what object, what property, from whose viewpoint, in what context?
-   Generate the **questions** whose answers would tell you whether the goal was achieved
-   Identify the specific, operationalized **metric** that answers each question
    -   And challenge whether the metric actually measures what you care about
    -   Again, it helps to do this with someone outside your org

</section>
<section class="slide" markdown="1">

## Sharing Results Responsibly

-   Every study has limitations; state them before stakeholders ask
-   Distinguish between "we found no effect" and "our study was not designed to detect that effect"
-   Present uncertainty:
    confidence intervals and effect sizes belong in results presented to management
-   Negative results matter too

</section>
<section class="slide" markdown="1">

## So, What *Do* We Know?

-   Code is statistically more repetitive and predictable than natural language [%b Hindle2016 %]
    -   This is why language models work well for it
-   Nearly all studies are short-term, use narrow tasks, and rely on volunteers
    -   External validity to professional development is largely assumed
-   Controlled experiments show AI tools can speed up specific, well-defined tasks for individual developers
-   Effects on end-to-end delivery (defect rates, lead time) are much less clear

</section>
<section class="slide" markdown="1">

## What to Do Next

-   Ask for evidence before adopting tools:
    what study supports this claim, is it applicable to your context, and can you see the raw data?
-   When an executive cites an AI productivity statistic, ask who funded the study,
    what specific task was studied,
    and whether there was a control group
-   Document your organization's experience and share it
    -   Your customers are more likely to trust you if you're honestly self-critical
    -   Your staff are more likely to trust you as well

</section>
<section class="slide" markdown="1">
  <div class="center">
  <h2>Thank You</h2>
  </div>
  <div class="row">
  <div class="col-4">
  <p><img src="@/_static/gvwilson-gage-2019.png" width="80%"></p>
  </div>
  <div class="col-8">
  <p><a href="http://third-bit.com">Greg Wilson</a></p>
  <p><a href="mailto:gvwilson@third-bit.com">gvwilson@third-bit.com</a></p>
  <p><a href="http://third-bit.com/notwrong/">http://third-bit.com/notwrong/</a></p>
  </div>
  </div>
  <div class="center">
  <p><em>start where you are &middot; use what you have &middot; help who you can</em></p>
  </div>
</section>
