<h1 align="center">Prompt Engineering Patterns</h1>

<p align="center">
  Learn prompt engineering from scratch to advanced, step by step, with simple runnable notebooks.
</p>

---

<div align="center">
  <a href="https://github.com/UdaySharmaGitHub/prompt-engineering-patterns/actions/workflows/ci.yml"><img src="https://github.com/UdaySharmaGitHub/prompt-engineering-patterns/actions/workflows/ci.yml/badge.svg" alt="CI"></a>
  <a href="https://github.com/UdaySharmaGitHub/prompt-engineering-patterns/actions/workflows/codeql.yml"><img src="https://github.com/UdaySharmaGitHub/prompt-engineering-patterns/actions/workflows/codeql.yml/badge.svg" alt="CodeQL"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT"></a>
  <a href="CONTRIBUTING.md"><img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs Welcome"></a>
  <a href="https://github.com/UdaySharmaGitHub/prompt-engineering-patterns/stargazers"><img src="https://img.shields.io/github/stars/UdaySharmaGitHub/prompt-engineering-patterns?style=social" alt="GitHub Stars"></a>
</div>

<p align="center">
  <a href="#learning-path">Learning Path</a> ·
  <a href="#getting-started">Getting Started</a> ·
  <a href="#file-structure">File Structure</a> ·
  <a href="#contributing">Contributing</a> ·
  <a href="https://github.com/UdaySharmaGitHub/prompt-engineering-patterns/issues">Pick an Issue</a> ·
  <a href="https://github.com/UdaySharmaGitHub/prompt-engineering-patterns/issues/new?labels=bug">Report a Bug</a> ·
  <a href="https://github.com/UdaySharmaGitHub/prompt-engineering-patterns/issues/new?labels=enhancement">Request a Lesson</a>
</p>

<div align="center">
  <img src="https://img.shields.io/badge/modules-11-2563eb?style=flat-square" alt="11 modules">
  <img src="https://img.shields.io/badge/notebooks-51-0f766e?style=flat-square" alt="51 notebooks">
  <img src="https://img.shields.io/badge/level-beginner_to_advanced-7c3aed?style=flat-square" alt="Beginner to advanced">
  <img src="https://img.shields.io/badge/python-%3E%3D3.10-16a34a?style=flat-square" alt="Python >= 3.10">
  <img src="https://img.shields.io/badge/contributions-welcome-ea580c?style=flat-square" alt="Contributions welcome">
</div>

---

Covers fundamentals, zero-shot, few-shot, structured output, Chain-of-Thought, prompt chaining, Tree of Thoughts, Self-Consistency, critic loops, RAG, agents, safety, evaluation and multimodal prompting.

## Getting Started

```bash
git clone https://github.com/UdaySharmaGitHub/prompt-engineering-patterns.git
cd prompt-engineering-patterns

python -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate

pip install -e ".[dev]"
cp .env.example .env        # then add your API key
```

Open any notebook in VS Code or Jupyter and start with `00-fundamentals/`.

## File Structure

```text
prompt-engineering-patterns/
├── README.md
├── CONTRIBUTING.md
├── LICENSE
├── pyproject.toml
├── requirements.txt
├── .env.example
├── .gitignore
│
├── .github/
│   └── workflows/
│       ├── ci.yml
│       └── codeql.yml
│
├── docs/
│   └── glossary.md
│
├── src/
│   ├── __init__.py
│   ├── llm.py
│   ├── utils.py
│   ├── retriever.py
│   ├── tools.py
│   └── eval.py
│
├── tests/
│   ├── conftest.py
│   ├── test_llm.py
│   ├── test_retriever.py
│   └── test_eval.py
│
├── diagrams/
│
├── 00-fundamentals/
│   ├── 01_how_llms_work.ipynb
│   ├── 02_tokens_and_context_windows.ipynb
│   ├── 03_temperature_and_sampling.ipynb
│   ├── 04_instruction_hierarchy.ipynb
│   └── 05_intro_to_evaluating_prompts.ipynb
│
├── 01-single-turn/
│   ├── 01_clear_instructions.ipynb
│   ├── 02_zero_shot.ipynb
│   ├── 03_one_shot.ipynb
│   ├── 04_few_shot.ipynb
│   ├── 05_role_prompting.ipynb
│   ├── 06_negative_prompting.ipynb
│   └── 07_delimiters_and_constraints.ipynb
│
├── 02-output-control/
│   ├── 01_output_formatting.ipynb
│   ├── 02_json_mode.ipynb
│   ├── 03_structured_output_schemas.ipynb
│   └── 04_prompt_templates.ipynb
│
├── 03-multi-turn/
│   ├── 01_system_prompt_design.ipynb
│   ├── 02_interview_prompting.ipynb
│   ├── 03_conversation_memory.ipynb
│   └── 04_prompt_chaining.ipynb
│
├── 04-reasoning/
│   ├── 01_chain_of_thought.ipynb
│   ├── 02_step_back_prompting.ipynb
│   ├── 03_least_to_most.ipynb
│   ├── 04_plan_and_solve.ipynb
│   ├── 05_self_consistency.ipynb
│   ├── 06_tree_of_thoughts.ipynb
│   └── 07_critic_loop.ipynb
│
├── 05-external-data/
│   ├── 01_rag.ipynb
│   ├── 02_hyde.ipynb
│   ├── 03_citations_and_grounding.ipynb
│   └── 04_graphrag.ipynb
│
├── 06-agentic-patterns/
│   ├── 01_tool_use.ipynb
│   ├── 02_react_agent.ipynb
│   ├── 03_reflection.ipynb
│   ├── 04_agent_memory.ipynb
│   ├── 05_multi_agent.ipynb
│   └── 06_human_in_the_loop.ipynb
│
├── 07-safety-and-alignment/
│   ├── 01_prompt_injection.ipynb
│   ├── 02_indirect_injection_in_rag_and_tools.ipynb
│   ├── 03_guardrails.ipynb
│   ├── 04_constitutional_ai.ipynb
│   └── 05_privacy_and_sensitive_data.ipynb
│
├── 08-evaluation/
│   ├── 01_test_cases_and_golden_sets.ipynb
│   ├── 02_rubrics_and_scoring.ipynb
│   ├── 03_llm_as_judge.ipynb
│   ├── 04_regression_testing.ipynb
│   └── 05_prompt_optimization.ipynb
│
├── 09-multimodal/
│   ├── 01_image_prompting.ipynb
│   ├── 02_audio_and_video_prompting.ipynb
│   └── 03_document_understanding.ipynb
│
└── 10-capstone/
    └── 01_build_and_evaluate_an_llm_app.ipynb
```

## Learning Path

| Section | What you learn |
|---------|----------------|
| `00-fundamentals/` | How LLMs work, tokens, context windows, temperature, instruction hierarchy |
| `01-single-turn/` | Clear instructions, zero/one/few-shot, role and negative prompting, delimiters |
| `02-output-control/` | Output formatting, JSON mode, structured output schemas, prompt templates |
| `03-multi-turn/` | System prompt design, interview prompting, conversation memory, prompt chaining |
| `04-reasoning/` | Chain-of-Thought, step-back, least-to-most, Plan-and-Solve, Self-Consistency, Tree of Thoughts, critic loops |
| `05-external-data/` | RAG, HyDE, citations and grounding, GraphRAG |
| `06-agentic-patterns/` | Tool use, ReAct, reflection, agent memory, multi-agent, human-in-the-loop |
| `07-safety-and-alignment/` | Prompt injection, guardrails, constitutional AI, privacy |
| `08-evaluation/` | Golden sets, rubrics, LLM-as-judge, regression testing, prompt optimization |
| `09-multimodal/` | Image, audio and video prompting, document understanding (PDFs, charts, tables) |
| `10-capstone/` | Build and evaluate a complete LLM app |

`src/` holds the shared helper code used by the notebooks, and `tests/` contains its unit tests.

## Contributing

Contributions are welcome: new lessons, fixes, better examples or clearer explanations. Read [CONTRIBUTING.md](CONTRIBUTING.md), then [pick an issue](https://github.com/UdaySharmaGitHub/prompt-engineering-patterns/issues) or open a new one.

## License

Released under the [MIT License](LICENSE).
