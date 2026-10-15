# claude-skills

Personal collection of Claude Code skills for academic paper / thesis ("skripsi")
writing, literature review, peer review, and the Karpathy-style 5-advisor
"LLM Council" decision method. Kept here (private repo) so it can be synced
and re-installed across multiple devices.

See [SOURCES.md](SOURCES.md) for where each skill came from and its license.

## Install on a new device

```bash
git clone <this-repo-url> ~/claude-skills
cd ~/claude-skills
./install.sh
```

This symlinks every folder under `skills/` into `~/.claude/skills/` (global,
available in every project) and copies files under `agents/` into
`~/.claude/agents/`.

Restart `claude` afterwards and run `/skills` to confirm they loaded.

## Update

```bash
cd ~/claude-skills
git pull
```

No need to re-run `install.sh` after a pull — the symlinks already point into
this repo, so a `git pull` updates the live skills immediately.

## Skills included

- **Paper / thesis writing**: `academic-paper`, `academic-paper-strategist`,
  `academic-paper-composer`, `research-paper-writing`, `paper-assembly`,
  `paper-writing-section`, `paper-compilation`, `paper-revision`,
  `related-work-writing`, `citation-management`, `latex-formatting`,
  `figure-generation`, `table-generation`, `slide-generation`,
  `symbolic-equation`, `idea-generation`, `research-planning`,
  `experiment-design`
- **Research / literature**: `deep-research`, `literature-review`,
  `literature-search`, `survey-generation`, `sr-screener`,
  `novelty-assessment`
- **Review / feedback**: `academic-paper-reviewer`, `review-paper`,
  `review-paper-checks`, `review-paper-light`, `review-paper-code`,
  `review-pap`, `review-grant`, `audit-analysis`, `self-review`,
  `rebuttal-writing`, `explain-diff`, `paper-version`
- **Pipeline / orchestration**: `academic-pipeline`
- **Utility**: `pdf-to-markdown`, `explorable-beamer`, `explorable-deck`
- **Decision method**: `llm-council` (5-advisor LLM Council)
