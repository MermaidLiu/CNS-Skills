---
name: cns-polishing
description: 将学术段落润色、重构或翻译为 Nature/Cell/Science 系期刊偏好的英文表达，按目标期刊加载写作规则并保持 claim-evidence 边界；适用于摘要引言结果讨论润色、中译英投稿稿语言编辑、CNS 风格改写与 AI 味收敛场景；触发词：CNS润色、Nature风格、Cell风格、Science风格、论文英文润色、学术写作润色、manuscript polish、投Nature润色、Cell论文改写、CNS academic writing
---

# CNS 学术润色 — Router

将用户手稿润色为 **Nature / Cell / Science** 系期刊偏好的英文。共享规则见 `../cns-shared/references/`。

## 路由协议

### 1. 检测轴

| 轴 | 值 | 默认 |
|----|-----|------|
| journal | nature / cell / science / generic-cns | generic-cns |
| section | abstract / intro / results / discussion / methods / title | 从原文推断 |
| language | en / zh-to-en | 从原文推断 |
| task | polish / restructure / translate | polish |

一行告知用户检测结果，便于纠正。

### 2. 加载文件

- 始终读：`../cns-shared/references/writing-principles.md`
- 读：`../cns-shared/references/journal-profiles.md` 中对应期刊小节
- 读：[references/section-guide.md](references/section-guide.md) 中对应 section

### 3. 润色优先级

`结构 → 声称边界 → 期刊语气 → 句级润色`

不可在不发明内容前提下修复的结构问题 → 标注 `[需作者补充]`

### 4. 输出

见 [references/output-format.md](references/output-format.md)

## 不应做什么

- 不新增结果、机制、引用
- 不保证接收/发表
- 从零起草整章 → 用 `cns-writing`
