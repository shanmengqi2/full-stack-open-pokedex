#!/bin/bash

# Vercel 提供的环境变量
# VERCEL_GIT_COMMIT_REF: 当前分支名
# VERCEL_ENV: production, preview, 或 development

echo "Branch: $VERCEL_GIT_COMMIT_REF"
echo "Environment: $VERCEL_ENV"

# 只在 main 分支时构建
if [[ "$VERCEL_GIT_COMMIT_REF" == "main" ]]; then
  echo "✅ Building on main branch"
  exit 1  # 返回 1 表示继续构建
else
  echo "⏭️  Skipping build on branch: $VERCEL_GIT_COMMIT_REF"
  exit 0  # 返回 0 表示跳过构建
fi
