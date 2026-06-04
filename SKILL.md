---
name: framework-guide
description: TRAE 框架导航与约定参考 — 当需要了解项目结构、目录约定、Feature 三文档体系或框架规则时使用
---

# TRAE Framework Guide

## 触发场景

- 用户询问项目结构、目录用途
- 需要创建或修改 Feature 文档
- 不确定某个文件应放在哪个目录
- 需要了解框架约定（提交规范、命名规则等）

## 框架概述

TRAE 是 AI Workbench 框架，按层次组织：

| 层 | 目录 | 用途 |
|----|------|------|
| 环境层 | `00-env/` | Agent 角色定义 |
| 代理层 | `01-agents/` | 自定义 Agent 配置 |
| 工作区层 | `02-workspace/` | Feature 实现代码 |
| 脚本层 | `03-scripts/` | 自动化脚本入口 |
| 技能层 | `04-skills/` | 用户自定义技能 |
| 配置层 | `05-configs/` | 项目配置文件 |
| 测试层 | `06-tests/` | 单元测试 |
| 文档层 | `07-docs/` | Feature 文档、框架指南 |
| 知识层 | `08-knowledge/` | 经验教训、会话笔记 |

## Feature 三文档结构

每个 Feature 在 `07-docs/features/{ID}/` 下必须有：

- `feature.md` — 需求描述 + 实现方案
- `progress.md` — 里程碑进度清单
- `test-cases.md` — 验证用例

可选扩展：
- `notes/latest.md` — 最新阶段笔记
- `notes/history.md` — 历史笔记归档
- `CLAUDE.md` — Feature 局部上下文

## 关键约定

1. **新 Feature 用 `/add_feature` 创建**，不要手动创建目录
2. **Git 提交类型**：`feat` / `fix` / `docs` / `refactor` / `test` / `chore`
3. **产物目录跳过遍历**：`tmp/`、`09-archive/`、`09-tools/`、`08-knowledge/rtk-stats/`、`08-knowledge/notes/raw/`
4. **非框架 Feature 实现放在 `02-workspace/`** 下
5. **框架自身优化记录在 `FRAMEWORK` Feature**
