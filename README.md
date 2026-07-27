# CNS Skills：面向 Cell / Nature / Science 的科研 Skill 库

[English](README_EN.md) · [Apache-2.0](LICENSE)

`cns-skills` 收录面向 **Cell、Nature、Science** 及其常见子刊的可复用科研技能，强调 CNS 叙事习惯、可验证工作流与可直接使用的学术产物。项目结构参考 [nature-skills](https://github.com/Yuan1z0825/nature-skills)。

---

## 目录

- [1. 项目简介](#1-项目简介)
- [2. 快速开始](#2-快速开始)
- [3. 安装](#3-安装)
- [4. 技能索引](#4-技能索引)
- [5. 贡献与开发](#5-贡献与开发)

---

## 1. 项目简介

### 1.1 为什么做 CNS Skills？

顶刊写作不只是「语法正确」——**Nature、Cell、Science** 在叙事重心、摘要长度、机制深度与 broader significance 上各有差异。本仓库把三刊共通原则与分刊差异封装为 Agent Skills，方便在 Cursor 等工具中一键调用。

### 1.2 设计原则

1. **一手来源优先**：规则对齐期刊 Author Guide 与已发表文章模式，而非泛泛「高级英语」。
2. **显式胜过隐式**：每条建议说明适用期刊与章节。
3. **Claim–Evidence–Boundary**：不替作者发明数据、引用或显著性。
4. **输出优先**：返回可粘贴文本、清单、图注 draft，而非空泛建议。
5. **技能自包含**：每个 skill 独立目录；共享内容放在 `cns-shared`。

### 1.3 与 nature-skills 的关系

本仓库**参考** [Yuan1z0825/nature-skills](https://github.com/Yuan1z0825/nature-skills) 的目录结构与 README 组织方式，并**扩展**至 Cell、Science 系期刊。可与之配合使用：Nature 专项深度任务可用 upstream `nature-*` skills；三刊统一路由用本仓库 `cns-*`。

---

## 2. 快速开始

安装完成后，可直接把段落、摘要、图注或审稿任务交给 Agent。下面这些提示词可以直接复制：

| 想做什么 | 直接这样说 |
|----------|------------|
| 润色为 Nature 风格 | 用 `cns-polishing`，把这段 Results 改成 Nature 风格，不要改数据。 |
| 润色为 Cell 风格 | 用 `cns-polishing`，Cell 投稿，润色 Abstract 和 Significance。 |
| 写摘要 / 引言 | 用 `cns-writing`，根据这些图和要点起草 Science 风格 Abstract。 |
| 预投稿审稿模拟 | 用 `cns-reviewer`，从 Nature 审稿人视角给三份 reviewer reports。 |
| 图件与图注规范 | 用 `cns-figure`，按 Cell 标准审查 Figure 2 和 legend 统计表述。 |
| 摘要标点排版 | 用 `cns-abstract`，按 Nature 150 词排版并检查标点后空格。 |

不确定用哪个 skill 时，直接描述任务即可；已知 skill 名可在提示词中写明「使用 `cns-polishing`」。

---

## 3. 安装

`cns-skills` 是一组围绕 `SKILL.md` 组织的技能包。`skills/` 下每个 `cns-*` 目录均为可安装单元；`cns-shared` 为共享参考资料，随其他 skill 一并安装。

### 3.1 Cursor（推荐）

**方式 A：安装脚本**

```bash
git clone https://github.com/MermaidLiu/CNS-Skills.git ~/ai-skills/cns-skills
cd ~/ai-skills/cns-skills
chmod +x scripts/update-cursor-skills.sh
./scripts/update-cursor-skills.sh
```

默认同步到 `~/.cursor/skills/`。指定目录：

```bash
./scripts/update-cursor-skills.sh --dest ~/.cursor/skills
```

检查差异（不复制）：

```bash
./scripts/update-cursor-skills.sh --check
```

**方式 B：手动复制**

```bash
cp -r skills/cns-polishing skills/cns-writing skills/cns-reviewer \
      skills/cns-figure skills/cns-abstract skills/cns-shared \
      ~/.cursor/skills/
```

安装后**新开 Agent 会话**，自然描述任务或点名 skill。

**关键规则**：保留完整目录结构（含 `references/`），不要只复制 `SKILL.md`。

### 3.2 `npx skills`（若已发布到 GitHub）

```bash
npx skills add MermaidLiu/CNS-Skills --list
npx skills add MermaidLiu/CNS-Skills --global --agent codex --skill 'cns-*' --yes --copy
```

安装 `cns-polishing` 等依赖共享包的 skill 时，同时安装 `cns-shared`：

```bash
npx skills add MermaidLiu/CNS-Skills --global --agent codex \
  --skill cns-polishing --skill cns-shared --yes --copy
```

### 3.3 Claude Code / Codex

与 [nature-skills 安装说明](https://github.com/Yuan1z0825/nature-skills#5-安装) 相同：保留稳定 clone，用 subagent 或 wrapper 指向 `skills/<name>/SKILL.md`，并保留 `cns-shared`。

示例 wrapper 路径：`~/ai-skills/cns-skills/skills/cns-polishing/SKILL.md`

---

## 4. 技能索引

`skills/cns-shared/` 为共享内容目录，不计入独立触发技能。

| 技能 | 状态 | 用途 | 触发词 | 详情 |
|------|------|------|--------|------|
| [`cns-polishing`](skills/cns-polishing/README.md) | Stable | Nature/Cell/Science 风格润色、中译英、结构微调 | CNS润色、Nature风格、Cell风格、manuscript polish | [详情](skills/cns-polishing/README.md) |
| [`cns-writing`](skills/cns-writing/README.md) | Beta | 摘要/引言/讨论起草，Cell Significance | CNS写作、写摘要引言、manuscript draft | [详情](skills/cns-writing/README.md) |
| [`cns-reviewer`](skills/cns-reviewer/README.md) | Beta | 三份 reviewer report 预投稿模拟 | 模拟审稿、reviewer report、预投稿评审 | [详情](skills/cns-reviewer/README.md) |
| [`cns-figure`](skills/cns-figure/README.md) | Beta | 投稿级图件版式、legend 统计、色盲友好 | CNS科研图、Nature figure、figure legend | [详情](skills/cns-figure/README.md) |
| [`cns-abstract`](skills/cns-abstract/README.md) | Stable | 英文摘要标点空格、词数、三刊体例 | CNS摘要排版、abstract format、摘要标点 | [详情](skills/cns-abstract/README.md) |

---

## 5. 贡献与开发

### 5.1 仓库目录结构

```
skills/
├── cns-shared/              # 共享期刊画像与写作原则
│   └── references/
├── cns-<topic>/
│   ├── README.md
│   ├── README_EN.md
│   ├── SKILL.md
│   └── references/
scripts/
└── update-cursor-skills.sh
```

### 5.2 新增技能流程

1. 创建 `skills/cns-<topic>/`
2. 添加 `SKILL.md`（frontmatter：`name`、`description`）
3. 添加中英文 `README.md` / `README_EN.md`（结构镜像，见 nature-skills 贡献指南）
4. 更新上方 [技能索引](#4-技能索引)
5. 状态标签：`Draft` / `Beta` / `Stable`

### 5.3 README 规范（单个 skill）

中文 README 基础结构：

```markdown
# `cns-<topic>` 技能
[English](README_EN.md)
一句话定位。
## 适合用它做什么
## 典型请求
## 你需要提供
## 产出
## 边界
## 相关技能
```

英文 README 章节一一对应。

---

## 致谢

- 目录与文档结构灵感来自 [Yuan1z0825/nature-skills](https://github.com/Yuan1z0825/nature-skills)
- 面向 **Cell · Nature · Science** 三刊生态扩展

## License

[Apache-2.0](LICENSE)
