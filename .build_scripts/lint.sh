#!/usr/bin/env bash
set -e # 停止腳本錯誤
# If deploying, don't balk on lint errors 如果成功執行,不要猶豫在lint 的錯誤上
if [ $TRAVIS_PULL_REQUEST = "false" ] && [ $TRAVIS_BRANCH = ${DEPLOY_BRANCH} ]; then
  npm run lint || true
else
  npm run lint
fi
