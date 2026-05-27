# Qualitative Methods: Interviews and Surveys

<div class="callout" markdown="1">

-   Decide when qualitative methods are the right choice for a research question.
-   Design interview guides and survey instruments for software engineering research.
-   Apply thematic analysis to turn interview data into findings.
-   Triangulate evidence across multiple qualitative methods.

</div>

Qualitative methods are how you find out what is actually going on when
numbers alone cannot tell you.
For example,
in 2024,
a team led by Jenny Liang surveyed 410 professional developers
across industries about their experience with AI programming assistants
[%b Liang2024 %].
They did not just ask "is this useful?"
They asked about specific scenarios, frustrations, workarounds,
and the kinds of tasks where developers had learned to distrust the tools.
The result was a detailed map of where AI assistance actually helps
and where it gets in the way—knowledge that would have been invisible
to a study that only measured task completion times.

A smaller but deeper example:
Johnson et al. interviewed 20 developers to ask why static analysis tools
are so rarely used despite being widely available [%b Johnson2013 %].
Every participant believed the tools are beneficial,
but false positives and poor warning presentation were the main barriers.
Where Liang provides breadth (410 developers across industries),
Johnson provides depth (20 developers with detailed follow-up),
which illustrates the scale-versus-richness trade-off between surveys and interviews.

## When Qualitative Methods Are the Right Choice

-   When you do not yet know what to measure
    -   Qualitative work often precedes quantitative work by identifying the right variables
-   When the phenomenon involves meaning, interpretation, or context
    that a number cannot capture
-   When your sample is small or access is limited
    -   Surveys of 10 people are not statistically powerful,
        but interviews with 10 people can be rich
-   When you want to understand *why* a pattern exists, not just that it does
-   When stakeholders need to be heard rather than counted

## Designing Interviews

-   Three types of interviews
    -   [%g structured_interview "Structured interviews" %] use a fixed script
    -   [%g semi_structured_interview "Semi-structured interviews" %] have a guide
        but allow follow-up
    -   [%g unstructured_interview "Unstructured interviews" %] follow the participant's lead
    -   Semi-structured is the most common in software engineering research:
        consistent enough to compare across participants,
        flexible enough to surface surprises
-   Open questions invite narrative:
    "Tell me about a time when the AI suggestion was wrong in a way that surprised you"
-   Closed questions invite classification:
    "On a scale of 1 to 5, how often do you accept AI suggestions without reading them?"
-   Probing follows up on what a participant says:
    "You mentioned you don't trust it for security-related code—can you say more about that?"
-   Avoid [%g leading_question "leading questions" %]:
    "Don't you find it faster?" assumes the answer
-   Avoid hypothetical questions:
    "Would you use X if Y?"
    People are poor predictors of their own behavior

## Designing Surveys

-   Surveys trade depth for breadth:
    you can reach many more people but get shallower data from each
-   [%g likert_scale "Likert scales" %]
    ("Strongly agree" to "Strongly disagree") are common but have known problems:
    -   People cluster toward the middle or toward the extremes
    -   The same label means different things to different people
    -   Use at least 5 points: 7 points gives more resolution
-   Response bias:
    people answer differently depending on question order, framing,
    and what they think the researcher wants to hear
-   [%g sampling_strategy "Sampling strategy" %] determines who you can generalize to
    -   [%g convenience_sampling "Convenience samples" %]
        (whoever responds to a social media post)
        are common and usually biased toward engaged, technical users
    -   [%g stratified_sampling "Stratified samples" %]
        deliberately include proportional representation of subgroups
-   Pilot your survey with 3-5 people and revise before distributing
-   E.g., Bettenburg et al. surveyed Apache, Eclipse, and Mozilla developers and users
    to find out what makes a good bug report [%b Bettenburg2008 %]
    -   A concrete question, a targeted audience, and actionable results

## Thematic Analysis

-   [%g thematic_analysis "Thematic analysis" %] is the standard approach
    for analyzing qualitative data
-   [%g open_coding "Open coding" %]:
    read through the data and tag segments with descriptive labels
    (e.g., "trust in AI suggestions," "time saved on boilerplate")
    -   Use [%g gerund_coding "gerund coding" %]:
        frame codes as actions rather than nouns,
        so "avoiding AI for security tasks" rather than "AI distrust"
    -   This preserves the temporal and causal structure
        of what participants are actually doing [%b Thornberg2014 %]
-   A theme is not a bucket for related quotes:
    -   It should express a claim you could write as a sentence,
        such as "developers trust AI output for syntax but not for logic" [%b Braun2019 %]
    -   Strong themes name tensions as well as patterns:
        "trusting the output while suspicious of the process"
        is more informative than "attitudes toward AI"
-   [%g axial_coding "Axial coding" %]:
    group codes into higher-level themes and examine relationships between them
    -   Ask which themes co-occur across participants, and why
    -   Look for conditions, contexts, and consequences:
        what makes a theme appear, in what setting, and with what effect on the participant
    -   If a code keeps appearing alongside very different themes,
        it may be doing double duty:
        split it and check whether each half is coherent on its own
    -   Separate participants' hypotheses and actions from their emotions and evaluations
        -   "I think AI will replace junior devs" is a claim
        -   "I hate how deskilled it makes me feel" is an affect
-   [%g saturation "Saturation" %]:
    stop collecting data when new interviews or responses stop introducing new codes
    -   A practical definition of "enough data"
-   Code with a second researcher and measure
    [%g intercoder_reliability "intercoder reliability" %] to reduce individual bias
    -   We'll discuss Cohen's kappa [later](@/experiments/)
-   Keep an audit trail: document coding decisions so others can evaluate them

## Experience Sampling

-   [%g experience_sampling "Experience sampling" %]
    prompts participants at random or scheduled intervals during their workday
    to report their current task, perceived state, or productivity
-   It captures in-the-moment data that retrospective surveys miss
    -   A developer's sense of how productive a day was often differs from
        what they reported each hour during that day
-   A field study using hourly self-reports found that developers categorized into six types
    (focused, social, lone, balanced, leading, goal-oriented)
    and that productivity patterns varied substantially by time of day and individual [%b Meyer2017 %]
-   When measuring subjective states,
    use validated instruments rather than writing your own questions
    -   Scales like SPANE (Scale of Positive and Negative Experience) have known psychometric properties
        [%b Diener2010 %]
    -   A five-item Likert question drafted for a single study does not

## Triangulation

-   [%g triangulation "Triangulation" %] means combining multiple data sources or methods
    to increase confidence in a finding
-   If interviews, survey, and observations all point to the same conclusion,
    that conclusion is more credible
-   Types of triangulation: data (multiple sources),
    investigator (multiple coders),
    method (qualitative + quantitative),
    theory (multiple interpretive frameworks)

## Grounded Theory

-   [%g grounded_theory "Grounded theory" %] is a qualitative methodology
    in which theory develops inductively from data through iterative coding,
    rather than testing a predetermined hypothesis
-   A researcher records observations or interviews, codes them, identifies patterns,
    collects more data to challenge those patterns, and continues until saturation
-   Grounded theory is expensive and slow but produces theory that is
    directly grounded in the messiness of real practice
-   Examples:
    -   Sedano et al. spent 2.5 years embedded at Pivotal
        and produced a nine-category taxonomy of software development waste
        [%b Sedano2017 %]
    -   Zieris and Prechelt recorded 60+ pair programming sessions at a dozen companies
        and identified the knowledge gap constellations
        that student experiments had controlled away
        [%b Zieris2014 %]
    -   Wessel et al. interviewed 21 open-source practitioners
        about their experience with bots in pull requests
        and developed a theory of how bot output becomes noise
        that overwhelms and distracts developers
        [%b Wessel2021 %]

## Ethical Considerations

-   Even internal research on colleagues requires ethical care
    -   Which is often ignored
-   [%g informed_consent "Informed consent" %]:
    participants must know what data is being collected and how it will be used
-   Privacy:
    interview and survey data can reveal individual performance,
    dissatisfaction, and private information
-   Power dynamics:
    interviewing colleagues or subordinates creates pressure to participate
    and to answer in ways that please the researcher
-   Harm:
    findings about team practices can be used for performance evaluation,
    even if that was not the study's intent
-   Involve legal, HR, or ethics reviewers before collecting data
    from individuals in your organization

## Misconceptions

Leading questions don't bias interview results if you're aware of them.
:   Even when you know a question is leading,
    the participant may still be pushed toward the expected answer.
    "Most developers find AI helpful — would you agree?" presupposes the answer.
    Rewrite as an open question: "What has your experience been with AI coding tools?"

Surveying your own team or users is sufficient for internal research.
:   Convenience sampling gives you data about a specific group
    that may not represent the population you want to generalize to.
    If only people who already agree with you respond,
    the results will confirm your assumptions.

You can stop analyzing data once you have enough to support your hypothesis.
:   [%g confirmation_bias "Confirmation bias" %] pushes researchers to stop analysis
    when the data supports their expectations.
    Rigorous qualitative work continues until saturation.

A study of 20 developers at one company can describe "what developers think."
:   [%g overgeneralization "Overgeneralization" %] turns findings from a specific sample
    into claims about a broader population.
    "Developers find AI tools frustrating" from a study of 20 junior developers at one company
    is overgeneralized.
    The claim should specify who, where, and under what conditions.

A low response rate doesn't matter if you have enough responses.
:   If only 10% of people surveyed respond,
    the 90% who did not may have very different views.
    [%g non_response_bias "Non-response bias" %] can be larger than sampling error,
    and a high absolute number of responses does not correct for it.

Qualitative research is just asking people what they think.
:   Rigorous qualitative work involves systematic data collection,
    structured analysis,
    documentation of decisions, and assessment of intercoder reliability.
    Asking a few colleagues over lunch is not a study.

More interviews always produce better qualitative results.
:   Depth matters more than volume.
    A study with twenty rich, well-analyzed interviews reaching saturation
    is more informative than one with a hundred superficial ones
    that never probe below the surface.

A high response count makes a survey representative.
:   Representativeness depends on who responds relative to who you want to generalize to,
    not on the raw number of responses.
    A million responses from a self-selected online audience
    is still a biased convenience sample.

Thematic analysis is subjective and therefore unreliable.
:   The subjectivity of interpretation is a known feature, not a flaw.
    Qualitative researchers manage it through audit trails, multiple coders,
    and transparent documentation of how codes and themes were derived.

Any descriptive label counts as a valid code.
:   A code named "AI" or "trust" is a noun bucket, not an analysis.
    Good codes capture what a participant is *doing*:
    "switching off AI suggestions after a bad experience" tells you something;
    "negative AI attitude" does not.
    The same principle applies to themes:
    a theme that cannot be expressed as a claim is a filing category, not a finding.

## Check Understanding

<details markdown="1">
<summary markdown="1">What is the difference between open coding and axial coding in thematic analysis?</summary>

Open coding is the first pass through the data,
where you tag individual segments with descriptive labels close to what the participant actually said.
Axial coding is a second-order process where you group those labels into higher-level themes
and begin to examine how the themes relate to each other.
Open coding is inductive and close to the data;
axial coding is more interpretive and moves toward an explanatory structure.

</details>

<details markdown="1">
<summary markdown="1">A researcher surveyed developers by posting a link in a popular programming subreddit and got 800 responses. They concluded that "the majority of developers are satisfied with AI coding tools." Identify two specific problems with this conclusion.</summary>

1.  The sample is a convenience sample skewed toward developers who actively participate in that community,
    who are likely more technically engaged,
    and are more likely to already use AI tools than average.
2.  The phrasing "majority of developers" implies generalizability to a population (all developers)
    that the sample does not represent.
    The conclusion should be "the majority of respondents to this survey were satisfied",
    which is a much weaker but more accurate claim.
3.  People who are satisfied are more likely to respond to a survey about satisfaction.

</details>

<details markdown="1">
<summary markdown="1">Why is "Would you use an AI coding assistant if it were integrated into your IDE?" a poor interview question?</summary>

It is a hypothetical question,
and people are unreliable predictors of their own future behavior.
Developers may say yes because the scenario sounds appealing,
but their actual behavior when faced with the tool may differ significantly.
A better question asks about past or present behavior:
"Tell me about the last time you used an AI coding assistant.
What did you do with the suggestion it gave you?"

</details>

<details markdown="1">
<summary markdown="1">The following interview question contains a flaw. Identify it and rewrite the question: "Given that AI tools can generate boilerplate code automatically, how much time do you think you save using them?"</summary>

The question is leading:
it presupposes that AI tools save time ("given that they can generate boilerplate code automatically")
and asks the participant to quantify that saving.
A respondent who does not save time,
or who finds the tools slow them down,
is implicitly pushed toward a positive answer.
A better version is,
"When you use AI coding tools, what effect do they have on how long tasks take you?
Can you give me a specific recent example?"

</details>

## Exercises

<div class="exercise" markdown="1">

### Write an Interview Guide (20 minutes)

Write a semi-structured interview guide (6-8 questions plus follow-up probes)
for a study on how developers decide when to accept or reject AI code suggestions.
Include at least one open question and one probe;
identify one question from your first draft that was leading and explain how you revised it.

</div>

<div class="exercise" markdown="1">

### Code This Excerpt (15 minutes)

Apply open coding to the following interview excerpt.
Identify at least four distinct codes,
quote the specific text that led to each code,
and then group your codes into two higher-level themes.

> I use it mostly for stuff I already know how to do—like if I need to write a regex
> or remember the syntax for something in a library I don't use often.
> But for the core logic of whatever I'm building, I don't trust it.
> It'll give you something that looks right but misses an edge case,
> and you won't notice until production.
> I've started just not using it for anything security-related at all.

</div>

<div class="exercise" markdown="1">

### Evaluate a Survey (15 minutes)

Find the methods section of [%b Liang2024 %]
or another published survey of developer experience with AI tools.
Identify the sampling strategy,
the response rate (if reported),
and one specific design choice that reduces bias.
Then identify one limitation the authors acknowledge and one they do not.

</div>
