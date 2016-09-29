# SummonBot

SummonBot can summon slack bot only define your environment.
SummonBot is Wrapped gem `Slack::Notifier`

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'summon_bot'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install summon_bot
```

## Usage

First, define your environment for example

.env
```
SUMMON_BOT_SLACK__NATTSUNN=https://hooks.slack.com/services/XXXXXXXX/XXXXXXXX/XXXXXXXX
```

```
SummonBot::Slack.nattsunn.speak('notification')
=> #<Net::HTTPOK 200 OK readbody=true>
```

And this:

![](https://gyazo.com/151508f7304326f65edfe4bd5b029097/raw)



If you want to use dummy notification class, write this your code.
`initializer/summon_bot.rb` instead.

```
SummonBot::Slack.instance_eval { @notifier_class = SummonBot::DummyNotifier }
```


## Test command.

```
RAILS_ENV=test bers
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

