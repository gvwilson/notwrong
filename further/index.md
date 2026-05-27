# Further Reading

These papers present useful results from empirical studies on a wide variety of topics.
Most aren't related to AI, but I hope they show you what we could (and should) aspire to.

## Developer Behavior & Experience

### Abad et al: Task Interruption in Software Development Projects

[%b Abad2018 %] combined longitudinal analysis of 4,910 recorded tasks from 17 professional
developers with a survey of 132 developers to study what makes task interruptions disruptive.
They found that contextual factors — such as how closely related the interrupting task is to
the interrupted one — predict disruptiveness more reliably than task-specific factors like
priority or temporal stage.

### Bauer et al: Indentation: Simply a Matter of Style or Support for Program Comprehension?

[%b Bauer2019 %] reports
a controlled experiment tested whether code indentation supports program comprehension or
is merely a stylistic convention.
Results showed measurable comprehension benefits from proper indentation,
suggesting that formatting standards have real cognitive effects rather than being purely aesthetic.

### Beller et al (2018): On the Dichotomy of Debugging Behavior Among Programmers

[%b Beller2018 %] combined an online survey of 176 developers with IDE instrumentation of 458 developers
across Eclipse and IntelliJ to study real-world debugging practices.
A striking dichotomy emerged: some developers rely heavily on debuggers while many others rarely use them,
and the debugger provided by the IDE is often underused relative to available strategies.

### Beller et al (2019): Developer Testing in the IDE: Patterns, Beliefs, and Behavior

[%b Beller2019 %] reports
a large-scale field study monitored 2,443 software engineers across four IDEs over 2.5 years to
study how developers actually test in practice.
Key findings challenge common assumptions: half the developers studied did not test at all;
developers rarely run tests during normal coding sessions;
and most programming sessions end without any test execution.

### Fucci et al (2018): Need for Sleep: The Impact of Sleep Deprivation on Novice Developers

[%b Fucci2018 %] described
a quasi-experiment with 45 undergraduates: 23 sleep-deprived, 22 normally rested.
It found that a single night of sleep deprivation reduced the quality of software implementations
by approximately 50%.
Sleep deprivation also impaired engagement and the ability to apply test-first development practices.

### Girardi et al: Recognizing Developers' Emotions While Programming

Using wristband sensors capturing electrodermal activity and heart-related metrics,
[%b Girardi2020 %] showed that developer emotions can be reliably recognized during programming tasks
with a minimal set of non-invasive biometric sensors.
Emotions correlated with perceived productivity,
supporting the validity of biometric measurement in field studies of developer experience.

### Meyer et al: Today Was a Good Day: The Daily Life of Software Developers

Based on 5,971 survey responses from professional developers at Microsoft,
[%b Meyer2021 %] characterized what makes a workday "good" and "typical."
Developers valued uninterrupted focused work above other factors,
and reported that meetings and context switching were the primary detractors from good days,
even though actual coding represents a smaller fraction of work time than commonly assumed.

### Newman et al: Psychoactive Substance Use By Professional Programmers

[%b Newman2023 %] surveyed and interviewed professional programmers about psychoactive substance use —
from caffeine and alcohol to prescription stimulants — in relation to their work.
The study offers a rare empirical window into coping strategies developers use to manage
the cognitive demands and stress of programming work.

### Obi et al: Identifying Factors Contributing to Bad Days for Software Developers

Using a mixed-methods approach
(interviews with 22 developers, surveys of 214, diary studies, and telemetry analysis),
[%b Obi2024 %] identified the most common sources of "bad days" in software development.
Friction from tools, processes, and organizational factors were the leading contributors,
and higher developer satisfaction consistently correlated with higher perceived productivity.

### Stapleton et al: A Human Study of Comprehension and Code Summarization

[%b Stapleton2020 %] studied 45 students and professional developers reading Java methods with either
human-written or machine-generated summaries and found that human-written summaries produced
significantly better comprehension (p = 0.029), even though participants could not tell the two apart.
Performance showed no correlation with BLEU or ROUGE scores, suggesting these widely used metrics
are poor proxies for actual comprehension benefit.

### Tregubov et al: Impact of Task Switching and Work Interruptions

Analyzing developer self-reported logs from a multi-project environment,
[%b Tregubov2017 %] found that developers working on two or more concurrent projects spend
approximately 17% of their effort on cross-project interruptions.
The number of concurrent projects was the strongest predictor of interruption frequency,
and Weinberg's common rule of thumb overestimates the overhead.

### Wyrich: Source Code Comprehension: A Contemporary Definition and Conceptual Model

[%b Wyrich2023 %] reviews the empirical literature on program comprehension and proposes a contemporary
conceptual model suitable for guiding research design.
The model identifies the cognitive processes and knowledge structures involved in understanding code,
providing a shared vocabulary for building more consistent and comparable comprehension studies.

## Code Review & Quality

### da Costa et al: A Framework for Evaluating the SZZ Approach

[%b AlencarDaCosta2017 %] developed a framework for evaluating implementations of the SZZ algorithm,
which identifies bug-introducing commits in version control history.
Their analysis shows that common SZZ variants produce inconsistent results,
and that choice of implementation substantially affects the conclusions of downstream
fault-prediction studies.

### Anda et al: Variability and Reproducibility in Software Engineering

In [%b Anda2009 %],
four independent companies were given the same requirements and asked to develop the same system;
the resulting projects showed substantial variability in effort, duration, and defect density.
This study is a landmark demonstration of how difficult it is to replicate software engineering
results even under tightly controlled conditions.

### Aniche et al: How Developers Engineer Test Cases

[%b Aniche2021 %] observed 13 developers thinking aloud while writing tests for real-world open-source
methods, then surveyed 72 more developers to validate the findings.
The study proposes a general framework for developer reasoning about testing and identifies
three overarching strategies, offering a foundation for both improving developer education and
guiding future research on manual test case design.

### Aranda & Venolia: The Secret Life of Bugs

By supplementing bug repository data with developer interviews,
[%b Aranda2009 %] showed that written bug reports frequently omit important causal factors
that the reporting developers actually knew about.
The mismatch between recorded and actual bug history is a significant source of
measurement error in studies that mine issue trackers.

### Basili & Selby: Comparing the Effectiveness of Software Testing Strategies

[%b Basili1987 %]'s controlled experiment compared code reading, functional testing,
and structural testing on professional programmers.
No single strategy consistently outperformed the others across all measures;
results varied by subject experience and fault type,
illustrating the context-dependence of testing recommendations.

### Bogart et al: How to Break an API

[%b Bogart2016 %] studied how developers in Eclipse, CRAN, and npm ecosystems negotiate breaking API changes,
finding that community norms and communication practices differ substantially across ecosystems.
These differences shape how disruptive API evolution is for downstream projects,
suggesting that technical and social factors are equally important in dependency management.

### El Emam et al: The Confounding Effect of Class Size on Object-Oriented Metrics

[%b ElEmam2001 %] showed that class size is a significant confounder when validating object-oriented metrics
against fault-proneness.
After controlling for size, many previously validated metrics lost their association with defects
in a large C++ telecom system — a methodological warning applicable to any study correlating
software metrics with quality outcomes.

### Fucci et al (2013): Impact of Process Conformance on the Effects of TDD

[%b Fucci2013 %] found that how closely developers adhere to TDD practices matters more for outcomes
than simply adopting the TDD label.
Poor conformance to the short test-code cycle reduces the quality benefits typically attributed to TDD,
suggesting that fidelity checks are essential in TDD experimentation.

### Fucci et al (2016): An External Replication on the Effects of Test-Driven Development

[%b Fucci2016 %] reports
a multi-site, blind-analysis replication of TDD experiments across several universities
that found effect sizes smaller than those reported in earlier single-site studies.
The study is a methodological model for transparent replication design in software engineering.

### Fucci et al (2017): A Dissection of the Test-Driven Development Process

[%b Fucci2017 %] reports
a controlled experiment dissected the TDD process to identify which elements drive its benefits.
The granularity of test-code cycles — not simply whether tests are written before or after code —
was the primary driver of quality improvements,
with short alternating steps outperforming both strict test-first and test-last approaches.

### Inozemtseva & Holmes: Coverage is Not Strongly Correlated with Test Suite Effectiveness

[%b Inozemtseva2014 %] studied the correlation between code coverage and fault detection across
real test suites and found no strong relationship.
The work cautions against using coverage as a proxy for test quality,
and identifies test suite size as an important confound that many coverage studies fail to control.

### Kamei et al: A Large-Scale Empirical Study of Just-in-Time Quality Assurance

[%b Kamei2013 %] was
a large-scale study of just-in-time defect prediction across six open source and six commercial projects
that showed change-level features — such as the size of a commit, its diffusion, and the author's experience —
can predict defect-inducing changes with useful accuracy.
The work supports change-focused quality assurance as a practical complement to module-level prediction.

### Silva et al: Why We Refactor? Confessions of GitHub Contributors

By monitoring Java projects on GitHub and surveying developers about their refactoring decisions,
[%b Silva2016 %] compiled a catalogue of 44 motivations for 12 common refactoring types.
A key finding is that refactoring is driven primarily by changing requirements,
not by code smells — challenging the assumptions behind automated refactoring recommendation tools.

### Spinellis et al: Broken Windows: Exploring a Controversial Theory on Code Quality

[%b Spinellis2024 %] empirically tested the "broken windows" theory in software by examining whether
the quality of existing code influences the quality of subsequent commits to the same files,
using C quality metrics and Java code smells across a large code corpus.
Results show that history matters: developers tend to match the quality norms they encounter,
with implications for how code review and technical debt management shape quality trajectories.

### Thongtanunam et al: Revisiting Code Ownership and Its Relationship with Software Quality

[%b Thongtanunam2016 %] extended traditional code ownership metrics by incorporating reviewing activity
alongside authorship, studying six releases of Qt and OpenStack.
They found that 67–86% of developers contributed solely through reviewing rather than authoring code,
and that review-aware ownership metrics were better predictors of defect-prone modules
than authorship-only metrics.

## Organizational & Team Factors

### Bird et al: Don't Touch My Code! Examining the Effects of Ownership on Software Quality

[%b Bird2011 %] examined code ownership in Windows Vista and Windows 7 by measuring the number of
low-expertise developers touching a component and the proportion of changes owned by the top contributor.
Both measures predicted pre-release faults and post-release failures,
with implications for code review policy and the management of contributions from peripheral developers.

### Gote et al: Big Data = Big Insights? Operationalising Brooks' Law in GitHub

Using a large GitHub dataset, [%b Gote2022 %] tested whether adding developers to a project
produces the delays predicted by Brooks' Law.
They found partial empirical support but also substantial heterogeneity:
the effect depends strongly on project maturity and how well new contributors are integrated.

### Mockus: Organizational Volatility and Its Effects on Software Defects

[%b Mockus2010 %] studied how personnel changes — departures, role changes, and organizational restructuring —
relate to customer-reported defects in a large software project.
Both developer departures and proximity to restructuring events were associated with reduced software quality,
even after controlling for code and change characteristics.

### Nagappan et al: The Influence of Organizational Structure on Software Quality

[%b Nagappan2008 %] quantified organizational complexity
using metrics such as the number of organizational units
that contributed to a component and showed that these metrics were stronger predictors of
failure-proneness in Windows Vista than traditional code metrics like churn, complexity, or coverage.
The work provides empirical support for Brooks' claim that organizational structure affects product quality.

## Measurement & Practitioner Relevance

### Brown et al: Measuring Software Innovation with Open Source Development Data

[%b Brown2024 %] examined how open source development data — commit rates, contributor counts, project activity —
can serve as indicators of software innovation.
The study proposes and validates a set of OSS-derived innovation metrics while also documenting
their limitations as proxies for the quality or significance of underlying technical advances.

### Flournoy et al: No Silver Bullets: Why Understanding Software Cycle Time is Messy

Analyzing over 55,000 cycle time observations across 216 organizations using Bayesian hierarchical
modeling, [%b Flournoy2025 %] found that coding days per week, merged pull request counts,
and collaboration patterns have precise but modest associations with cycle time.
Unexplained variation between and within individuals dwarfs these modest effects,
suggesting that cycle time is a poor proxy for overall developer productivity.

### Junior & Meira: Towards Effective Productivity Measurement in Software Projects

[%b Junior2009 %] reviewed productivity measurement approaches in software organizations and proposed
a Value Size Metrics framework for defining productivity models that align with management goals
rather than imposing a universal metric.
The work highlights how the choice of productivity measure is inherently a business decision,
not a purely technical one.

### Sanchez Ruiz et al: A Benchmarking Proposal for DevOps Practices in Open Source Projects

[%b SanchezRuiz2023 %] argued that standard DORA metrics cannot be directly applied to open source projects
and proposed an adapted benchmark — Release Frequency, Lead Time, Time To Repair, Bug Rate —
that can be collected automatically from GitHub.
They applied the framework to Angular, Kubernetes, TensorFlow, and VS Code.

### Storey et al (2022): How Developers and Managers Define and Trade Productivity for Quality

[%b Storey2022 %] was
an exploratory survey of developers and managers at Microsoft that the two groups are poorly aligned
in how they define productivity: developers focus on activities and flow,
while managers emphasize outcomes and quality.
The gap in mutual awareness of each other's definitions creates friction in how productivity
is measured, communicated, and rewarded.

## Research Methods

### Baltes et al: Evaluation Guidelines for Empirical Studies in SE Involving LLMs

[%b Baltes2025 %] describes
a collaborative framework developed by a large group of SE researchers
that addresses how to design and
evaluate empirical studies in software engineering that involve large language models.
The guidelines cover construct validity, benchmark design, replication, and responsible reporting,
and are intended for both researchers designing studies and reviewers evaluating them.

### Cosentino et al: Findings from GitHub

[%b Cosentino2016 %]
is a methodological study examining how conclusions drawn from GitHub data depending on which projects
are sampled, which metrics are used, and how "active" projects are defined.
Small changes in dataset construction can substantially alter study findings,
underscoring the importance of transparency in data collection and filtering decisions.

### Davis et al: What's (Not) Working in Programmer User Studies?

[%b Davis2023 %] systematically reviewed programmer user studies and identified recurring methodological
weaknesses, including inadequate ecological validity, insufficient sample sizes, and lack of replication.
The paper provides a checklist of criteria for designing and evaluating stronger programmer studies.

### Fernandez Pinto & Fernandez Pinto: Epistemic Diversity and Industrial Selection Bias

[%b FernandezPinto2023 %] argues that industry funding and practitioner collaboration
in software engineering research create systematic selection bias toward practically useful results,
suppressing exploratory or null findings.
They advocate for mechanisms to preserve epistemic diversity in the research community.

### Gold & Krinke: Ethical Mining

[%b Gold2020 %] examined the ethical implications of mining software repositories for research,
including questions of developer consent, data re-identification, and potential harms from
publishing findings about specific individuals or projects.
The paper proposes a set of ethical guidelines for the mining software repositories community.

### Storey et al (2024): Guidelines for Using Mixed Methods Research in Software Engineering

[%b Storey2024 %] is a practical guide to mixed methods research in software engineering,
covering when to combine qualitative and quantitative approaches,
how to integrate findings from different methods,
and how to report results clearly.
The guidelines are grounded in established social science practice and adapted for SE research contexts.

### Treude: Qualitative Data Analysis in Software Engineering

[%b Treude2024 %] is
a tutorial-style overview of qualitative data analysis techniques used in software engineering research,
including open coding, thematic analysis, and grounded theory.
The paper also discusses pedagogical strategies for teaching these methods to SE researchers
who are more accustomed to quantitative approaches.

### Uyaguari et al: Relevant Information in TDD Experiment Reporting

[%b Uyaguari2024 %] analyzed published TDD experiments and identified common omissions in reporting
that limit reproducibility and meta-analysis.
The work produces a checklist of information that TDD studies should report to enable
meaningful comparison across experiments.

## AI Tools & LLMs

### Bano et al: What Does a Software Engineer Look Like? Exploring Societal Stereotypes in LLMs

[%b Bano2025 %] probed several large language models with questions about what a software engineer
looks like, finding that models reproduce societal stereotypes around gender and appearance.
The work raises concerns about how AI tools embedded in hiring, mentoring, and professional
identity contexts may reinforce rather than reduce existing biases.

### Bouzenia & Pradel: Understanding Software Engineering Agents

[%b Bouzenia2025 %] analyzes the thought-action-result trajectories of three LLM-based software
engineering agents (RepairAgent, AutoCodeRover, and OpenHands) across 120 executions and 2,822
LLM interactions focused on program repair and issue resolution.
Combining quantitative and qualitative analysis, the study identifies behavioral motifs and
anti-patterns that distinguish successful from failed runs, offering practical guidance for
improving agent design, prompting strategies, and failure diagnosis.

### El Haji et al: Using GitHub Copilot for Test Generation in Python

[%b ElHaji2024 %]
was an empirical study of GitHub Copilot's ability to generate tests for Python projects.
It found that Copilot produces tests with reasonable statement coverage but frequently generates incorrect
assertions or misses edge cases.
The results suggest that AI-generated tests require careful review before being trusted as part of a test suite.

### Fu et al: Security Weaknesses of Copilot-Generated Code in GitHub Projects

[%b Fu2025 %] analyzed Copilot-generated code committed to real GitHub projects and found a high rate
of security weaknesses across multiple vulnerability categories.
The study suggests that AI-generated code should be subject to the same security review as
human-written code — and potentially more rigorous scrutiny given its volume and speed of generation.

### Miller et al: Individual and Team Drivers of Developer GenAI Tool Use

[%b Miller2025 %] studied why developers adopt or avoid generative AI coding tools,
finding that individual preferences, task type, and team norms all play roles.
Lack of clear examples of appropriate use cases and uncertainty about when to trust AI suggestions
were common barriers to adoption, particularly for newer team members.

### Vartziotis et al: Carbon Footprint Evaluation of Code Generation through LLMs

[%b Vartziotis2025 %] is
an empirical study quantifying the energy and carbon costs of using large language models
for code generation tasks across different model sizes and generation strategies.
The work provides a framework for comparing the environmental impact of AI coding assistance
and motivates consideration of carbon costs alongside functional performance.

## Other

### Behroozi et al: Does Stress Impact Technical Interview Performance?

[%b Behroozi2020 %]
describes a randomized controlled trial with 48 CS students
that compared performance on coding problems in
private versus public whiteboard settings.
Candidates in the observed condition performed less than half as well as those solving
the same problems in private, suggesting that standard technical interview formats measure
stress tolerance as much as technical ability.

### Butler et al: Objectives and Key Results in Software Teams

[%b Butler2023 %] conducted semi-structured interviews with 47 participants and a survey of over
4,000 engineers at a large software company to study how Objectives and Key Results (OKRs)
function in practice.
Translating high-level goals into actionable work was found to be difficult regardless of tooling,
and middle management emerged as a critical but underappreciated component of that translation.

### Maalej et al: On the Comprehension of Program Comprehension

Observing 28 professional developers and surveying 1,477 respondents,
[%b Maalej2014 %] found that developers follow pragmatic, context-driven comprehension strategies
when navigating unfamiliar code.
They try to avoid comprehension effort when possible, often inspect graphical interfaces directly
to infer behavior, and rely more on personal communication and experience than on documentation.

### Ray et al: A Large-Scale Study of Programming Languages and Code Quality in GitHub

[%b Ray2017 %] analyzed 728 GitHub projects spanning 17 programming languages and over 63 million lines
of code to study whether language choice affects defect rates.
After controlling for project size, team size, and project history, they found that language design
has a modest but statistically significant effect, with statically typed and type-safe languages
associated with somewhat fewer defects.
