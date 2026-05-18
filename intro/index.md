# Introduction

<div class="callout" markdown="1">

-   Define empirical software engineering and explain why it matters for practitioners.
-   Distinguish qualitative from quantitative research methods.
-   Identify why media coverage of AI studies is often unreliable.
-   Evaluate a claim by asking what evidence would refute it.

</div>

In 2023,
a team at GitHub published a paper claiming that
developers using Copilot completed tasks 55% faster than those who did not [%b Peng2023 %].
That number spread through tech media like a cold through an open-plan office.
Executives cited it in all-hands meetings,
and blog posts called it a "landmark study".

Only a few people asked whether 55% was even plausible.
They were right to do so.
The study used 95 participants on a single artificial task
(implementing an HTTP server in JavaScript),
lasted ninety minutes,
and was funded by GitHub.
None of that makes it wrong,
but it does mean "55% faster" applies to a very narrow slice of software development.
This workshop is about how to do those studies better.

## What Empirical Software Engineering Is

-   [%g empirical_software_engineering "Empirical software engineering" %]
    (ESE) uses observation and experiment to study how software is built,
    and what practices actually work
    -   ESE is distinct from building better tools: its goal is knowledge, not artifacts
-   It draws on methods from psychology, sociology, economics, and statistics
-   The field has existed since at least the 1970s
    -   Sackman et al's deeply flawed but widely quoted study on programmer productivity
        from 1968 is an early example [%b Sackman1968 %]
-   Even simple-sounding questions resist easy answers
    -   Prechelt measured 73 professional developers solving the same programming task
         and found completion times ranged from 0.6 to 63 hours [%b Prechelt2000 %]
    -   After controlling for programming language the ratio shrank to 17-fold
    -   With a careful definition of "more productive" it shrank further to 5-to-11-fold
    -   The answer depends a lot on exactly what question is asked

## Why Media Coverage Is Unreliable

-   Journalists rarely read past the abstract,
    and abstracts rarely report limitations
-   Press releases are written by communications teams whose job is to generate coverage,
    not accuracy
-   [%g preprint "Preprints" %] circulate as freely as peer-reviewed papers,
    with no visible distinction to non-specialists
-   Conflict of interest is common
    -   A large fraction of AI productivity studies are funded by
         the companies selling the tools being studied
-   Replication is rare in software engineering research
    -   Most results are reported once and never checked

## Claims, Studies, and Evidence

-   A [%g claim "claim" %] is an assertion: "AI tools make programmers more productive"
-   A [%g study "study" %] is a systematic attempt to test a claim
-   [%g evidence "Evidence" %] is what a study produces, and varies in quality
-   The chain from claim to policy is often much shorter than it should be
    -   One study with a nice headline can change hiring practices, procurement decisions,
         and university curricula
-   Good scientific practice distinguishes between "this study found X" and "X is true"

## Qualitative vs. Quantitative

-   [%g quantitative_methods "Quantitative methods" %] measure things:
    task completion time, defect rate, commit frequency
    -   Good for "how much" and "is there a difference"
    -   Requires that you can define and measure what you care about
-   [%g qualitative_methods "Qualitative methods" %] describe things:
     what developers think about a tool,
    how teams decide what to build,
    why a particular practice was adopted
    -   Good for "why" and "what is happening here"
    -   Requires that you can access and interpret people's experiences
-   Neither is superior
    -   The question determines the method
-   Mixed-methods studies use both, which is more expensive but often more informative

## Misconceptions

Peer review means a study is correct.
:   Peer review is a filter for obvious errors and implausible claims,
    not a certificate of validity.
    Reviewers rarely re-run analyses,
    check raw data,
    or verify that reported results follow from the methods described.

A larger sample always makes a study better.
:   Sample size matters, but it cannot fix a flawed design.
    A study with ten thousand participants on an irrelevant task
    tells you nothing about the question you care about.

Qualitative methods are less rigorous than quantitative methods.
:   They use different standards of rigor, not lower ones.

One well-designed study settles a question.
:   Single studies, however well designed,
    report what happened in one sample under one set of conditions.
    A finding becomes reliable through replication across different samples,
    contexts, and research teams.

## Check Understanding

<details markdown="1">
<summary markdown="1">What is the difference between a claim and evidence?</summary>

A claim is an assertion, such as, "AI tools make programmers more productive."
Evidence is what a systematic study produces when it tests that claim.
Evidence varies in quality depending on the study design,
sample size, context, and potential for bias.
A single study produces evidence for or against a specific claim under specific conditions;
it does not prove or disprove the claim in general.

</details>

<details markdown="1">
<summary markdown="1">The GitHub Copilot study found a 55% speed increase. A colleague says this means that AI doubles productivity. Identify two specific problems with that interpretation.</summary>

First, the study used an artificial task,
which does not represent the full range of software development work.
Second, "55% faster on one task" is not the same as "doubles overall productivity".
Productivity involves much more than task completion time,
and the effect on the full working day is unknown.
A third problem, if needed:
the study was funded by GitHub,
which has a financial interest in Copilot appearing effective.

</details>

<details markdown="1">
<summary markdown="1">A researcher says, "We used qualitative methods because quantitative methods can't capture the nuances of developer experience." A second researcher says, "We used quantitative methods because qualitative findings can't be generalized." Which researcher is right?</summary>

Neither.
Qualitative methods are better suited to understanding what is happening and why,
while quantitative methods are better suited to measuring how much and whether there is a difference.
The choice of method should depend on the research question.
Dismissing either approach without considering the question is a sign of methodological tribalism,
not sound reasoning.

</details>

## Further Reading

-   [%b Bano2025 %]:
    GPT-4 and Copilot show gender/racial bias in SE recruitment scenarios (300 profiles each);
    both prefer male/Caucasian profiles for senior roles;
    generated images show lighter skin, slimmer, and younger bias.
-   [%b Brown2024 %]:
    Novel software innovation measure based on OSS dependency growth across 350k releases from 33k packages;
    semantic versioning signals drive adoption more than technical complexity;
    measure must be weighted by ecosystem culture and maturity.
-   [%b ElHaji2024 %]:
    GitHub Copilot generates passing tests only 45% of the time within existing test suites;
    without existing tests, 92% fail or are empty;
    test comments influence generation quality.
-   [%b Fu2024 %]:
    Analysis of 733 AI-generated code snippets (Copilot, CodeWhisperer, Codeium):
    29.5% Python and 24.2% JS snippets have security weaknesses across 43 CWEs;
    Copilot Chat fixes up to 55.5% of issues.
-   [%b Miller2025 %]:
    Paired interviews (54 developers, 27 teams) show
    generative AI adoption differences stem from tool perception (collaborator vs. feature),
    engagement style, and persistence;
    Productivity Pressure Paradox undermines widespread adoption.
-   [%b Vartziotis2025 %]:
    Overview of green coding and metrics for measuring LLM sustainability;
    uses GitHub Copilot to auto-generate code in the automotive domain;
    introduces embodied and operational carbon metrics for AI-generated code evaluation.

## Exercises

<div class="exercise" markdown="1">

### Find the Funding (15 minutes)

Find a recent news article about an AI tool's impact on software development.
Locate the original study it references (or the closest study you can find).
Identify who funded the study,
what the actual sample was,
what task was studied,
and what the abstract claims versus what the methods section actually supports.
Write two or three sentences summarizing the gap between the headline and the evidence.

</div>

<div class="exercise" markdown="1">

### Qualitative or Quantitative? (10 minutes)

For each of the following research questions,
decide whether you would primarily use qualitative or quantitative methods,
and give one sentence explaining why:

-   Do developers who use pair programming make fewer defects?
-   Why do some teams adopt test-driven development while others reject it?
-   How do developers decide when to ask an AI assistant for help
     versus working through a problem themselves?
-   Does code review time decrease when teams adopt a particular tool?

</div>

<div class="exercise" markdown="1">

### Replication Reality Check (20 minutes)

Pick one claim you have heard or read about AI and software development
(e.g., "AI tools reduce onboarding time" or
"AI-generated code has more security vulnerabilities").
Search for at least two studies that address this claim.
Do they agree?
If not, what differences in method might explain the disagreement?

</div>
