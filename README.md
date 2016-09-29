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
SUMMON_BOT_SLACK__MARIO = 'slack url'
```

```
SummonBot::Slack.mario.speak('notification')

#=> [ENV=development] notification
```

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

