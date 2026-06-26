# jdpro-compact

個人私有倉庫，基於 [6dylan6/jdpro](https://github.com/6dylan6/jdpro) 精選裁剪，只保留跟「京豆」、「東東農場種植」直接相關的腳本，以及運作所需的基礎依賴/工具腳本。其餘抽獎、簽到、小遊戲類腳本已全部移除，方便日後重新部署到 QingLong 時保持乾淨。

聲明：此庫所有內容僅用於個人學習，原始來源與更新請參考上游 [6dylan6/jdpro](https://github.com/6dylan6/jdpro)。

## 保留腳本清單

### 京豆 / 東東農場相關
- `jd_plantBean.js`、`jd_plantBean_help.js` — 種豆主程式／助力
- `jd_farmnew_code_help.js`、`jd_water_new.js`、`jd_farmnew_ck_help.js`、`jd_fruit_new.js`、`jd_newfarmlottery.js` — 農場新-邀請碼助力／澆水／CK助力／摘水果／抽獎轉盤
- `jd_bean_change.js`、`jd_beans_7days.py`、`jd_bean_info.js` — 京豆變動／7天／資訊統計
- `jd_pkabeans.js`、`jd_signbeanact_.js` — 禮品卡領豆／天天領京豆

### 基礎設施（保留，供上述腳本運作使用）
- `jd_CheckCK.js` — Cookie 有效性檢測
- `jd_indeps.js` — 依賴安裝
- `jd_pullfix.py` — 拉庫修復
- `jd_sharecode.sh` — 互助碼生成（農場澆水助力會用到）
- `jd_wskey.py`、`jd_wsck.py` — wskey / cookie 轉換
- `jd_proxy_check.js` — 代理檢測

## 部署到 QingLong

到「訂閱管理」建立訂閱：

```
ql repo https://github.com/w2xg2022/jdpro-compact.git "jd_|jx_" "backUp" "^jd[^_]|USER|JD|function|sendNotify|utils"
```

其餘步驟（依賴安裝、環境變量 `JD_COOKIE`、通知設定）與上游 README 相同。

<details>
<summary>原始 README 筆記（節錄自 6dylan6/jdpro）</summary>

1、部署青龍登陸，版本不用追新，穩定才好，推薦部署到內網。
2、到訂閱管理創建訂閱並運行。
3、訂閱執行完，到定時任務搜索依賴安裝（jd_indeps）任務執行。
4、到環境變量，創建變量，名稱: `JD_COOKIE`，值：抓的CK（要安全就手抓），多個每行建一個，不要全寫在一個。
5、配置通知，通知的key填寫到配置管理 `config.sh` 文件。

</details>
