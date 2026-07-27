---
name: cns-abstract
description: 输入英文摘要草稿与目标期刊（Nature/Cell/Science），检查标点空格、词数限制、结构化小标题与 CNS 叙事句，输出排版后摘要与修改明细；适用于投稿前摘要格式统一、PDF复制摘要整理、三刊 Abstract 体例对齐场景；触发词：CNS摘要排版、Nature abstract、Cell abstract format、Science abstract、英文摘要标点、abstract word count、摘要格式检查、投稿摘要润色
---

# CNS 英文摘要排版

在 [english abstract 通用规则](../cns-shared/references/writing-principles.md) 基础上，叠加期刊词数与叙事要求。详见 [references/format-rules.md](references/format-rules.md)。

## 工作流

1. 确认期刊 → 加载 `../cns-shared/references/journal-profiles.md` Abstract 小节
2. 标点空格：`, ; : . ? !` 后空格；`p < 0.05`；数字单位空格
3. 词数统计与超限警告
4. 输出见 [references/output-format.md](references/output-format.md)

## 期刊词数参考

- Nature ~150 words
- Science ~125 words
- Cell 子刊各异（默认 250 上限 unless 用户指定）

## 不应做什么

- 不翻译、不扩写科学内容（除非用户另要求）
