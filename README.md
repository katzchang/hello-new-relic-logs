# Hello New Relic Logs

New Relic Logsを試してみました。

## 必要なもの

* Docker
* Make
* [New Relicライセンスキー](https://docs.newrelic.com/docs/accounts/install-new-relic/account-setup/license-key)
  * `.zshenv` などで環境変数 `NEW_RELIC_LICENSE_KEY` にセットしていてください

## 動かし方

fluentdを起動して:

```
make all
```

ログを送り込みます

```
make echo
```

あとは [New Relic Logs](https://one.newrelic.com/launcher/logger.log-launcher) をみてみましょう！
