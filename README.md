# linebot-6th

## これは何？

[シンデレラガールズ 6th ライブ](https://idolmaster.jp/event/cinderella6th.php) の出演者情報を教えてくれる **非公式** LINE bot です。

![ios](https://user-images.githubusercontent.com/8451003/47545740-d4635900-d928-11e8-8d19-5a13017b31af.png)

## 友達登録

![qrcode](https://user-images.githubusercontent.com/8451003/47545852-610e1700-d929-11e8-968a-f74c11d69818.png)

## 内輪向け 発表資料

* https://qiita.com/megane42/private/a97f298082dbc7814b0d

## 開発者向け（＝ 自分向け）メモ

### Heroku アプリ作成（初回のみ）

```bash
heroku create linebot-6th
```

### 環境変数登録

```bash
heroku config:set LINE_CHANNEL_SECRET=mojamoja
heroku config:set LINE_CHANNEL_TOKEN=mojamoja
```

### デプロイ

```bash
git push heroku master
```
