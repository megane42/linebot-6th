# Deploy to Heroku

## Set Envs

```bash
heroku config:set LINE_CHANNEL_SECRET=mojamoja
heroku config:set LINE_CHANNEL_TOKEN=mojamoja
```

## Create App (Only First Time)

```bash
heroku create linebot-6th
```

## Deploy

```bash
git push heroku master
```
