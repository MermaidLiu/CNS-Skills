# CNS Skills: Research Skills for Cell, Nature, and Science

[中文说明](README.md) · [Apache-2.0](LICENSE)

`cns-skills` collects reusable research skills for **Cell**, **Nature**, **Science**, and common sub-journals—focused on CNS writing conventions, verifiable workflows, and paste-ready outputs.

---

## Table of Contents

- [1. Overview](#1-overview)
- [2. Quick Start](#2-quick-start)
- [3. Installation](#3-installation)
- [4. Skill Index](#4-skill-index)
- [5. Contributing](#5-contributing)

---

## 1. Overview

### 1.1 Why CNS Skills?

Top-journal writing is not just “grammatically correct.” **Nature**, **Cell**, and **Science** differ in narrative emphasis, abstract length, mechanism depth, and broader significance. This repo packages those differences as Agent Skills for Cursor and similar tools.

### 1.2 Design Principles

1. **Primary sources first** — align with Author Guides and published patterns.
2. **Explicit over implicit** — state journal and section context.
3. **Claim–Evidence–Boundary** — never invent data, citations, or significance.
4. **Output-first** — paste-ready text, checklists, legend drafts.
5. **Self-contained skills** — shared material lives in `cns-shared`.

---

## 2. Quick Start

| Task | Example prompt |
|------|----------------|
| Nature-style polish | Use `cns-polishing` — polish this Results paragraph in Nature style; do not change data. |
| Cell-style polish | Use `cns-polishing` — Cell submission; refine Abstract and Significance. |
| Draft sections | Use `cns-writing` — draft a Science-style abstract from these figures and bullets. |
| Mock review | Use `cns-reviewer` — three Nature-style reviewer reports. |
| Figure standards | Use `cns-figure` — review Figure 2 and legend statistics for Cell. |
| Abstract formatting | Use `cns-abstract` — Nature ~150 words; fix punctuation spacing. |

Name the skill explicitly when you know it; otherwise describe the task.

---

## 3. Installation

### 3.1 Cursor (recommended)

```bash
git clone https://github.com/MermaidLiu/CNS-Skills.git ~/ai-skills/cns-skills
cd ~/ai-skills/cns-skills
chmod +x scripts/update-cursor-skills.sh
./scripts/update-cursor-skills.sh
```

Verify without copying:

```bash
./scripts/update-cursor-skills.sh --check
```

Copy the **full skill directories** (including `references/`), not `SKILL.md` alone.

### 3.2 npx skills (when published)

```bash
npx skills add MermaidLiu/CNS-Skills --list
npx skills add MermaidLiu/CNS-Skills --global --agent codex --skill 'cns-*' --yes --copy
```

Include `cns-shared` when installing skills that depend on it.

---

## 4. Skill Index

| Skill | Status | Purpose | Details |
|-------|--------|---------|---------|
| [`cns-polishing`](skills/cns-polishing/README_EN.md) | Stable | Polish / translate for CNS journals | [Details](skills/cns-polishing/README_EN.md) |
| [`cns-writing`](skills/cns-writing/README_EN.md) | Beta | Draft abstract, intro, discussion | [Details](skills/cns-writing/README_EN.md) |
| [`cns-reviewer`](skills/cns-reviewer/README_EN.md) | Beta | Pre-submission mock review | [Details](skills/cns-reviewer/README_EN.md) |
| [`cns-figure`](skills/cns-figure/README_EN.md) | Beta | Figure layout and legend stats | [Details](skills/cns-figure/README_EN.md) |
| [`cns-abstract`](skills/cns-abstract/README_EN.md) | Stable | Abstract punctuation and word limits | [Details](skills/cns-abstract/README_EN.md) |

`cns-shared` is support content, not a standalone triggered skill.

---

## 5. Contributing

1. Add `skills/cns-<topic>/` with `SKILL.md`, `README.md`, `README_EN.md`
2. Update the skill index
3. Label status: `Draft` / `Beta` / `Stable`

Per-skill READMEs must mirror EN/ZH section structure (same headings, same order).

---

## License

[Apache-2.0](LICENSE)
