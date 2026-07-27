---
name: cns-reviewer
description: 从 Nature/Cell/Science 审稿人视角模拟预投稿评审，输出三份 reviewer report 与编辑建议信要点，覆盖创新性、机制深度、统计、可重复性与 CNS 叙事；适用于投稿前自查、组会模拟审稿、修回策略预演场景；触发词：CNS审稿、模拟审稿、reviewer report、预投稿评审、Nature审稿人视角、Cell review、Science reviewer、审稿意见模拟、pre-submission review
---

# CNS 预投稿审稿模拟

模拟 **3 位审稿人** + **编辑视角** 评估稿件，规则见 `../cns-shared/references/journal-profiles.md`。

## 工作流

1. 确认目标期刊与稿件类型（Article / Letter / Resource 等）
2. 读用户提供的摘要+图注+关键结果（或全文）
3. 按 [references/review-rubric.md](references/review-rubric.md) 输出

## 输出

- **Reviewer 1–3**：Major/Minor、逐条意见（列表）
- **Editor summary**：fit for journal? 决定倾向
- **作者行动清单**：按优先级排序

## 不应做什么

- 不替代真实同行评议
- 写返修回复 → 需单独请求（可扩展 cns-response）
