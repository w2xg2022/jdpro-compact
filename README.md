# jdpro-compact

个人私有仓库，复制自 [6dylan6/jdpro](https://github.com/6dylan6/jdpro)，并进行精简。

声明：此库所有内容仅用于个人学习，原始来源与更新请参考上游。

## 精简说明

只精选与「京豆」「东东农场」相关的 **12 支**脚本，加上运行所需的必要基础设施 **7 支**，其余抽奖、签到、小游戏类脚本全部移除。

### 京豆 / 东东农场相关（12支）
- `jd_plantBean.js`、`jd_plantBean_help.js` — 种豆主程序／助力
- `jd_farmnew_code_help.js`、`jd_water_new.js`、`jd_farmnew_ck_help.js`、`jd_fruit_new.js`、`jd_newfarmlottery.js` — 农场新-邀请码助力／浇水／CK助力／摘水果／抽奖转盘
- `jd_bean_change.js`、`jd_beans_7days.py`、`jd_bean_info.js` — 京豆变动／7天／资讯统计
- `jd_pkabeans.js`、`jd_signbeanact_.js` — 礼品卡领豆／天天领京豆

### 必要基础设施（7支，供上述脚本运行使用）
- `jd_CheckCK.js` — Cookie 有效性检测
- `jd_indeps.js` — 依赖安装
- `jd_pullfix.py` — 拉库修复
- `jd_sharecode.sh` — 互助码生成（农场浇水助力会用到）
- `jd_wskey.py`、`jd_wsck.py` — wskey / cookie 转换
- `jd_proxy_check.js` — 代理检测

### 已移除
微信抽奖、竞拍、限时京喜、幸运抽奖、排行榜投票、图书抽奖、天天抽红包、秒杀签到/抽奖、发货签到、带图评价、IF/SL/LM抽奖、权益签到、天天逛街、hs签到、视频任务、口令转链、店铺签到（多支）、取关店铺、汪汪庄园（2支）、微多鱼、新奇盲盒、微信token、超级转盘、一键申请、摸鹅、金融捕鱼、ys签到、店铺红包、V任务50元卡券、清空购物车、删垃圾券 等约40支跟京豆/农场无关的脚本。

## 排程建议

排程时间统一控制在 **上午7:00 ~ 下午19:00** 之间，避免凌晨/深夜运行。

重新部署到 QingLong 后，请手动到「定时任务」为下列脚本建立排程：

| 脚本 | 建议排程 (cron) | 说明 |
| --- | --- | --- |
| `jd_plantBean.js` | `10 7 * * *` 和 `50 18 * * *` | 种豆主程序 |
| `jd_plantBean_help.js` | `10 7 * * *` 和 `50 18 * * *` | 种豆助力 |
| `jd_farmnew_code_help.js` | `10 7 * * *` 和 `50 18 * * *` | 农场新-邀请码助力 |
| `jd_water_new.js` | `10 7 * * *` 和 `50 18 * * *` | 农场新-浇水 |
| `jd_farmnew_ck_help.js` | `10 7 * * *` 和 `50 18 * * *` | 农场新-CK助力 |
| `jd_fruit_new.js` | `10 7 * * *` 和 `50 18 * * *` | 农场摘水果 |
| `jd_newfarmlottery.js` | `10 7 * * *` 和 `50 18 * * *` | 新农场抽奖转盘 |
| `jd_bean_change.js` | `10 7 * * *` 和 `50 18 * * *` | 京豆变动统计 |
| `jd_beans_7days.py` | `10 7 * * *` 和 `50 18 * * *` | 京豆7天统计 |
| `jd_bean_info.js` | `10 7 * * *` 和 `50 18 * * *` | 京豆资讯统计 |
| `jd_pkabeans.js` | `10 7 * * *` 和 `50 18 * * *` | 礼品卡领豆 |
| `jd_signbeanact_.js` | `10 7 * * *` 和 `50 18 * * *` | 天天领京豆 |

> 以上12支「京豆/农场」类脚本，固定早上 **07:10**、晚上 **18:50** 各跑一次（同一支脚本要建两个cron任务）。两个时间点都落在 07:00~19:00 区间内。

基础设施脚本（`jd_CheckCK.js`、`jd_indeps.js`、`jd_pullfix.py`、`jd_sharecode.sh`、`jd_wskey.py`、`jd_wsck.py`、`jd_proxy_check.js`）排程时间不限，可依需求自行安排（例如依赖安装/拉库修复通常只需订阅完跑一次）。

## 部署到 QingLong

到「订阅管理」建立订阅：

```
ql repo https://github.com/w2xg2022/jdpro-compact.git "jd_|jx_" "backUp" "^jd[^_]|USER|JD|function|sendNotify|utils"
```

其余步骤（依赖安装、环境变量 `JD_COOKIE`、通知设定）与上游 README 相同。
