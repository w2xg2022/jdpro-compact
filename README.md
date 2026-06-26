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

### 京豆 / 农场类（12支）

建议分布在两个时间窗口内，**每支脚本错开不同的分钟数**，不要全部挤在同一分钟同时执行：

- 早上窗口：**07:00 ~ 07:25**
- 晚上窗口：**18:30 ~ 18:55**

每支脚本各建两个 cron 任务（一个落在早上窗口，一个落在晚上窗口），分钟数在窗口内随机错开即可：`jd_plantBean.js`、`jd_plantBean_help.js`、`jd_farmnew_code_help.js`、`jd_water_new.js`、`jd_farmnew_ck_help.js`、`jd_fruit_new.js`、`jd_newfarmlottery.js`、`jd_bean_change.js`、`jd_beans_7days.py`、`jd_bean_info.js`、`jd_pkabeans.js`、`jd_signbeanact_.js`。

### 基础设施类（7支）

`jd_CheckCK.js`、`jd_indeps.js`、`jd_pullfix.py`、`jd_sharecode.sh`、`jd_wskey.py`、`jd_wsck.py`、`jd_proxy_check.js` 不需要常态排程，**建议直接停用定时任务**，需要时（例如刚拉库完要装依赖、或修复拉库问题）手动点「执行」即可。面板有夜间关机习惯的话，排到夜间也跑不到，不如直接停用。

### 关于青龙的默认行为（重要限制）

QingLong 拉取本仓库时，会用「自动添加定时任务」功能给新脚本各配一个默认排程时间，但**这个默认时间是 QingLong 自己生成的，不会按照上面的窗口分布，也不会自动停用基础设施类的排程**。也就是说，每次「全新订阅 / 删除重拉」之后，都需要手动按上面的建议重新调整一次排程（分布到两个窗口、停用基础设施类）；这个建议没办法写进脚本或仓库里自动生效，只能当作每次部署后的检查清单。

## 部署到 QingLong

到「订阅管理」建立订阅：

```
ql repo https://github.com/w2xg2022/jdpro-compact.git "jd_|jx_" "backUp" "^jd[^_]|USER|JD|function|sendNotify|utils"
```

其余步骤（依赖安装、环境变量 `JD_COOKIE`、通知设定）与上游 README 相同。
