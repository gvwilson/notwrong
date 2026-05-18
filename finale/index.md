# Conclusion: What to Do Next

<div class="callout" markdown="1">

-   Match a research question to the most appropriate method.
-   Distinguish what AI-productivity research actually shows from what is being oversold.
-   Describe what rigorous future research on AI in software engineering would look like.
-   Identify concrete next steps for applying these methods in your own context.

</div>

In 2001,
Mark Harman and Bryan Jones published a paper proposing that
software engineering problems could be treated as search problems:
find the test suite that maximizes coverage,
or the configuration that minimizes defects—and solved with optimization algorithms [%b Harman2001 %].
At the time this seemed like an interesting theoretical curiosity.
Two decades later,
search-based software engineering is a thriving subfield with annual conferences,
graduate programs,
and practical tools.
It exists because someone decided to ask a question that had not previously been asked.

The questions researchers ask shape what the field knows.
The questions practitioners ask shape what gets funded and studied.
You now have the tools to ask better questions.

## Matching Research Questions to Methods

-   "Is there a difference?" → controlled experiment or quasi-experiment
-   "How large is the difference?" → effect size and confidence intervals
-   "Why does this happen?" → qualitative methods (interviews, observation)
-   "What do practitioners think?" → surveys
-   "What patterns exist in large codebases?" → mining software repositories
-   "What causes what?" → natural experiments, DiD, ITS—or randomization
-   Remember: no single method answers all questions,
    so complex questions need mixed methods
-   The hardest step is often translating a vague concern
    ("Is AI bad for us?") into a specific, answerable question

## Triangulating Methods

-   Interruption research used three complementary approaches on the same phenomenon
    [%b Mark2008 %]
    -   Controlled lab experiments
        (measured resumption lags precisely but under artificial conditions)
    -   Cognitive models
        (predicted error rates without any participants)
    -   Observational studies
        (found that workers switch contexts every three minutes, which was faster than any lab task) 
-   Each method answered questions the others could not
    -   The lab studies established causal mechanisms
    -   The observational studies established that the phenomenon occurs at scale in real work

## What We Know About AI and Developer Productivity

-   Controlled experiments show AI tools can speed up specific, well-defined tasks
    (e.g., code generation or writing tests)
    for individual developers
-   Effects on end-to-end software delivery (e.g., defect rates and lead time)
    are much less studied and less consistent
-   More experienced developers appear to benefit less or even be slowed down;
    less experienced developers show larger gains on narrow tasks
-   Nearly all studies are short-term, use artificial or narrow tasks,
    and are conducted on volunteers or students
    -   External validity to large-scale professional software development is largely assumed

## What Is Being Oversold

-   Aggregate productivity claims ("AI makes everyone 55% faster")
    are derived from specific task studies
    -   The generalization is rarely justified
-   Industry reports on AI adoption frequently lack peer review, methodology sections,
    and conflict-of-interest disclosures
-   The absence of replications is treated as evidence the original finding stands,
    rather than as a flaw

## Staying Current Without Drowning

-   Follow proceedings of top venues: ICSE, FSE, MSR, ESEM, ASE
-   Use Google Scholar alerts for specific research questions rather than general topic feeds
-   Check pre-registration databases (AsPredicted, OSF)
    for upcoming studies on topics you care about
-   Be skeptical of preprints until they appear in peer-reviewed venues,
    and skeptical of peer-reviewed papers until they are replicated
-   Build a network:
    one well-chosen researcher to follow is more valuable than a hundred papers to skim

## How to Push for Better Evidence

-   Ask for evidence before adopting tools at your organization:
    what study supports this claim, and is that study applicable to your context?
-   Contribute to the evidence base:
    document your own organization's experience carefully and share it,
    even in blog posts or case studies
-   Support pre-registration when you run internal studies
-   When an executive cites a statistic about AI productivity,
    ask who funded the study, what task was studied, and was there a control group?

## Misconceptions

The evidence on AI and developer productivity is settled.
:   The field is less than a decade old,
    dominated by short-term studies on narrow tasks,
    heavily influenced by industry funding,
    and almost entirely lacking independent replication.
    Some things seem to be true in some contexts
    but very little has been settled.

More published studies on a topic means we know more about it.
:   More studies increase knowledge only if they are well-designed,
    independently replicated, and free of systematic bias.
    A hundred underpowered studies funded by the same industry stakeholders
    add less than one independent, pre-registered, adequately powered replication.

Practitioner experience is a reliable substitute for empirical study.
:   Practitioners are subject to the same cognitive biases as anyone else.
    Systematic study is not a criticism of experience—it is a way to check
    whether experience is misleading you.

## Check Understanding

<details markdown="1">
<summary markdown="1">A colleague says: "There are hundreds of studies showing AI tools improve developer productivity—the evidence is overwhelming." What is the most important methodological concern you would raise?</summary>

Publication bias:
studies showing positive effects are more likely to be published
than studies showing null or negative effects.
A large number of published studies showing positive effects does not mean
the weight of evidence is positive—it may mean that negative results are in file drawers.
A well-conducted meta-analysis that corrects for publication bias
(using funnel plots and trim-and-fill methods)
would give a more reliable picture than a count of positive studies.

</details>

<details markdown="1">
<summary markdown="1">Name two types of long-term effects of AI coding tools that have not been adequately studied, and for each, describe what method you would use to study it and why.</summary>

Deskilling:
the concern that relying on AI suggestions atrophies developers' ability
to solve problems independently.
This is hard to study with an experiment
(you cannot ethically deprive developers of tools for years).
A longitudinal observational study comparing assessments  on code challenges,
interview performance, and debugging exercises over time
for heavy versus light AI tool users,
with careful attention to confounding by role, tenure, and tool type,
would help answer the question,
but good luck getting funding.

Code maintainability:
whether AI-generated code is harder or easier to maintain over time.
An MSR study following repositories that adopted AI coding tools
and measuring maintainability metrics like churn rate or code complexity over one to two years
would provide evidence,
again with caution about confounding and selection bias.

</details>

<details markdown="1">
<summary markdown="1">You are asked to advise your organization on whether to mandate AI coding tools for all developers. What two pieces of evidence would you most want before making a recommendation, and why?</summary>

Answers will vary, but strong answers will ask for:

1.  Evidence from a context similar to your organization (not students on artificial tasks),
    including effect sizes and confidence intervals
1.  Evidence on outcome measures that matter to your organization
    like defect rates, lead time, or developer satisfaction,
    not just speed on isolated tasks.

Give yourself additional credit for noting the importance of long-term evidence
(not just 90-minute experiments)
and for asking about conflict of interest in the cited studies.

</details>

<details markdown="1">
<summary markdown="1">The following sentence contains a reasoning error. Identify and correct it: "No study has found that AI tools deskill developers, so we can safely assume they don't."</summary>

This is absence of evidence used as evidence of absence.
The lack of published studies showing deskilling could mean deskilling does not occur,
or it could mean no one has run a well-powered long-term study designed to detect it.
Given that most AI coding tool studies are short-term and focused on productivity,
the absence of deskilling findings is unsurprising and uninformative.
The correct statement is,
"The evidence on whether AI tools cause deskilling is insufficient to draw conclusions."

</details>

## Exercises

<div class="exercise" markdown="1">

### Research Agenda (20 minutes)

Write a one-page research agenda for one question you care about
related to AI and software development.
Include the specific research question,
the method you would use,
the sample you would need,
the outcome measure,
two threats to validity,
and one ethical consideration.
Be honest about what your proposed design can and cannot establish.

</div>

<div class="exercise" markdown="1">

### Evidence Briefing (20 minutes)

Prepare a five-minute verbal briefing for a non-technical manager who wants to know,
"What does the research say about AI coding tools?"
Write bullet points covering what the evidence actually shows,
what important questions are unanswered,
and one specific caution about how to interpret the most widely cited statistic
they are likely to have heard.

</div>

<div class="exercise" markdown="1">

### The Question Behind the Question (15 minutes)

A manager says,
"We're spending $X per developer per year on AI coding tools. Are we getting our money's worth?"
Restate this as three specific, answerable research questions.
For each,
name the method you would use and one data source you would need.
Then explain which question matters most to the organization and why.

</div>
