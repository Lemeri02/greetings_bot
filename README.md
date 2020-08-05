## Телеграм бот для приветсвия новых пользователей

### Description

This is TelegramBot on Ruby.



### Running

1. Download repo to your local directory and type there

```
bundle
```

2. Create the bot at Telegram using [@botfather](https://telegram.me/botfather)

You need your bot's API Token like `285662358:KKLLERo_pXlJJ8lfkQ88pK6MlkfkLK3oPJRgH`.

3. Create `.env` file and write there

```
TELEGRAM_BOT_API_TOKEN = '285662358:KKLLERo_pXlJJ8lfkQ88pK6MlkfkLK3oPJRgH'
```

4. Now you can run app

```
ruby main.rb
```

### Deploying on Heroku

Type before pushing

```
heroku buildpacks:set heroku/ruby
```

After pushing go to dashboard and switch on dynos.
