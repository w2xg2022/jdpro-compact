#!/usr/bin/env bash
# 提醒手动更新 JD_COOKIE，不做任何登录/抓取动作
curl -s "${NTFY_URL:-https://ntfy.sh}/${NTFY_TOPIC}" \
  -H "Title: 提醒更新京东Cookie" \
  -d "现在是早上6:55，记得用手机APP掃碼更新一下JD_COOKIE～"
echo "已发送cookie更新提醒"
