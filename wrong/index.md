# How to Be Wrong

<div class="callout" markdown="1">

-   Identify common measurement traps in AI productivity studies.
-   Explain why self-reported productivity is an unreliable metric.
-   Recognize selection bias and novelty effects in before/after designs.
-   Diagnose which methodological mistake a given study is making.

</div>

Suppose your manager asks you next week to demonstrate that
the AI coding tools your company just purchased are worth the subscription cost.
What would you measure?
Lines of code generated?
Tickets closed?
A survey asking whether developers feel more productive?
Each of those answers is wrong in a specific way.
This lesson describes twelve of the most common mistakes currently being made
in published research and in organizations.
At least one of them is probably something you,
your team,
or your employer is doing right now.

## Counting Lines of Code Generated

-   [%g proxy_metric "Proxy metrics" %] stand in for concepts that are hard to measure directly;
    lines of code is one of the oldest
-   AI assistants generate more code, not necessarily better outcomes.
    A team that sees a 40% increase in lines of code per developer after adopting AI
    tools has measured verbosity, not productivity
-   Deleting 2,000 lines of tangled logic and replacing it with 200 clean ones
    is an improvement that looks like a loss on this metric [%b Sadowski2019 %]
-   More code means more to read, maintain, and debug,
    all of which are future costs

## Timing Artificial Tasks

-   A widely cited study found developers using GitHub Copilot completed a task
    55% faster than those who did not [%b Peng2023 %]
-   The task was implementing an HTTP server in JavaScript, from scratch,
    in ninety minutes, by developers with no other obligations that day
-   Real software development involves navigating a large codebase you did not write,
    understanding a requirement described ambiguously in a ticket,
    coordinating with three colleagues, and attending four meetings
-   Speed on a greenfield toy task does not predict speed on any of that

## Measuring Only the Easy Half

-   AI tools make code generation faster: that half is easy to measure
-   The other half: time spent reviewing AI-generated code for correctness,
    time lost debugging confidently wrong suggestions,
    security vulnerabilities introduced by plausible-looking but insecure code,
    and technical debt from suggestions that solved the immediate problem
    while ignoring the surrounding design
-   More code generated means more code to review: if AI increases code volume
    without increasing review capacity, cycle time may worsen [%b Forsgren2021 %]
-   Optimizing one stage of a pipeline while ignoring the others is a
    systems-thinking failure dressed as a productivity study
-   A study of GitHub Copilot's code found that
    a substantial fraction of generated code contained security vulnerabilities,
    and that developers under time pressure accepted insecure suggestions
    at higher rates [%b Pearce2022 %]
-   Measuring only the inputs that go up while ignoring the costs that also rise
    is not measurement: it is marketing

## Before/After With No Control Group

-   You roll out AI tools in January,
    and by June pull requests are shipping faster,
    so the tools are working, right?
-   Also between January and June:
    you hired three more developers,
    rewrote the CI pipeline,
    and switched cloud hosting services
-   Without a group that did not receive the tools,
    you cannot separate the AI effect from any of the other changes
    that happened at the same time
-   [%g internal_validity "Internal validity" %] requires a credible counterfactual,
    i.e., some way of knowing what would have happened otherwise

## Asking Developers If They Feel More Productive

-   Survey results like "87% of developers report feeling more productive with AI tools"
    are regularly cited as evidence that the tools work [%b Liang2024 %]
-   Three things make self-report systematically misleading here:
    -   The [%g hawthorne_effect "Hawthorne effect" %]:
        people work differently when they know they are being observed and evaluated
    -   The [%g novelty_effect "novelty effect" %]:
        new tools feel faster because they are novel,
        but the effect typically fades within weeks
    -   [%g social_desirability_bias "Social desirability bias" %]:
        respondents tend to say what they believe the survey wants to hear,
        especially when management chose the tool
-   Feeling more productive is not the same as being more productive,
    and the gap between the two is exactly what measurement is supposed to close
-   Effects that actually matter emerge over months, not weeks
    -   Skill atrophy for tasks now delegated to the AI
    -   Accumulation of technical debt from wrong suggestions
    -   Changes in how teams collaborate

## Goodhart's Law Revisited

-   In 2023, McKinsey proposed measuring individual developer productivity
    using counts of commits, pull requests, code reviews, and similar activities
    [%b McKinsey2023 %]
-   But remember Goodhart's Law:
    when a measure becomes a target, it ceases to be a good measure [%b Goodhart1984 %]
-   When developers know their commit count is tracked, they make more, smaller commits;
    when ticket counts are tracked, tickets get split;
    the numbers improve while the underlying work does not [%b Beck2023 %]
-   Activity is not output, and output is not value

## Treating Adoption Rate as a Success Metric

-   "We have achieved 90% AI tool adoption across engineering"
    is a procurement outcome, not a productivity outcome
-   Adoption measures whether the tool is installed and opened
    -   It says nothing about whether suggestions are useful,
        whether developers accept them thoughtlessly,
        or whether the accepted suggestions are correct
-   Adoption is easier to measure than benefit,
    which is exactly why it gets reported instead
-   High adoption combined with low suggestion quality
    produces a workforce spending time managing a tool rather than benefiting from one

## Comparing Volunteers to Non-Volunteers

-   Studies that compare developers who chose to use AI tools
    against those who did not are comparing two different populations,
    not two conditions
-   Early adopters differ from late adopters and non-adopters
    in ways that directly predict productivity
    -   They are more motivated to experiment
    -   More comfortable with new tooling
    -   More likely to already be high performers
-   [%g selection_bias "Selection bias" %] means that
    any observed difference between the groups may be a property of the person
    rather than the tool
-   This is the most common design flaw in industry AI productivity reports

## Treating Suggestion Acceptance Rate as a Quality Signal

-   AI coding assistants commonly report
    what fraction of their suggestions developers accept
    -   Higher acceptance rates are presented as evidence that the tool is useful
-   Acceptance measures whether the generated code looked plausible enough
    for a developer to press Tab
-   It does *not* measure whether the code was correct, secure, or maintainable
-   Developers under time pressure accept more suggestions,
    including insecure ones [%b Pearce2022 %]
    -   A tight deadline makes acceptance rate rise for exactly the wrong reasons
    -   "Adopt AI or lose your job" doesn't encourage careful reflection

## Comparing AI to Nothing

-   Studies that compare AI-assisted developers to a control group using nothing
    have chosen a baseline that does not exist in practice
-   The relevant question is whether AI tools outperform the alternatives developers already have
    -   Developers without AI assistants (still) use Stack Overflow and talk to colleagues
-   Choosing a weak baseline makes any tool look good

## Check Understanding

<details markdown="1">
<summary markdown="1">Your company surveys developers three weeks after rolling out an AI coding assistant. Seventy-eight percent report feeling more productive. Your manager says this proves the tools are working. Identify two specific flaws in this conclusion.</summary>

First,
the survey was conducted three weeks after adoption,
which falls within the novelty period: developers are typically more engaged
and positive about new tools during the initial weeks,
and that enthusiasm inflates self-reported productivity regardless of actual performance.
Second,
feeling more productive is not the same as being more productive.
Self-report surveys measure perception,
which is also distorted by the Hawthorne effect and social desirability bias.

</details>

<details markdown="1">
<summary markdown="1">A study compares fifty developers who volunteered to use an AI assistant against fifty who did not. The AI group closes 25% more tickets per week. What is the most likely alternative explanation for this result, and what design change would address it?</summary>

The most likely alternative explanation is selection bias:
developers who volunteered to use the tool differ from those who did not
in ways that predict productivity independently of the tool.
A design change that would address this is random assignment:
randomly give the tool to half the developers rather than letting them self-select,
so that the two groups are comparable on average.

</details>

<details markdown="1">
<summary markdown="1">The following measurement plan contains at least two flaws. Identify them and describe a better approach: "To evaluate our AI tools, we will measure lines of code committed per developer per week, comparing the two weeks before and two weeks after tool adoption."</summary>

Lines of code has low construct validity as a productivity measure,
and a two-week window falls entirely within the novelty period.
A better approach would use an outcome-linked metric
such as deployment frequency paired with change failure rate,
or cycle time from ticket creation to production deployment,
and extend the measurement window to at least three to six months.
Including a team that did not adopt the tools would provide a control group
to separate the AI effect from other concurrent changes.

</details>

<details markdown="1">
<summary markdown="1">A vendor announces that their AI assistant's suggestion acceptance rate rose from 25% to 40% over the past quarter and calls this a "quality improvement." What is wrong with this interpretation?</summary>

Acceptance rate measures whether a suggestion looked plausible,
not whether the accepted code was correct, secure, or maintainable.
A rise in acceptance rate can reflect better suggestions,
but it can equally reflect increased time pressure,
a shift toward simpler tasks where AI does better,
or [%g habituation "habituation" %] (developers becoming less critical over time).
Without a separate measure of the quality of accepted suggestions,
such as defect rates or code review rejection rates,
acceptance rate tells you nothing about whether the tool is producing better code.

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
    Paired interviews (54 developers, 27 teams) show generative AI adoption differences stem from
    tool perception (collaborator vs. feature), engagement style, and persistence;
    Productivity Pressure Paradox undermines widespread adoption.
-   [%b Vartziotis2025 %]: Overview of green coding and metrics for measuring LLM sustainability;
    uses GitHub Copilot to auto-generate code in the automotive domain;
    introduces embodied and operational carbon metrics for AI-generated code evaluation.

## Exercises

<div class="exercise" markdown="1">

### Audit Your Own Organization (20 minutes)

List three metrics your organization currently uses (or has used recently)
to evaluate the impact of a tool or process change on developer productivity.
For each metric,
identify which of the failure modes from this chapter it falls into,
and briefly explain why.
If you believe a metric avoids all of the traps,
write one sentence explaining why you think so.

</div>

<div class="exercise" markdown="1">

### Redesign a Flawed Study (15 minutes)

A company wants to know whether their AI coding tool improves developer productivity.
Their current plan is to survey developers about perceived productivity after two weeks,
compare responses to a pre-adoption baseline survey,
and report the percentage who say they feel more productive.

Identify at least three problems with this design,
then describe a better approach in a few sentences,
specifying what you would measure,
over what time period,
and how you would construct a comparison group.

</div>

<div class="exercise" markdown="1">

### Find the Baseline (10 minutes)

Find a recent vendor claim about an AI tool's impact on developer productivity,
such as a blog post, marketing page, or case study.
Identify the baseline the claim uses:
what does the AI-assisted group get compared to?
Then write two sentences describing a more informative baseline
and why it would change the interpretation of the result.

</div>
