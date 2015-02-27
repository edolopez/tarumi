# Tarumi
===

Tarumi is a super simple library written in Ruby to interact with [Slack](https://slack.com/) webhooks. It was written by [Abraham Kuri](https://github.com/kurenn) from [Icalia Labs](https://github.com/IcaliaLabs).

## Table of contents
- [Configure Slack](#configure-slack)
- [Installation & Usage](#installation-&-usage)
- [Contributing](#contributing)
- [Heroes](#heroes)
- [License](#license)

## Configure Slack

Before you can start integrating the gem, you need to first add a webhook to which the bot wil ping and then send out the message, so let's do that:

1. Open [https://api.slack.com/](https://api.slack.com/) and sign in if you haven't
2. Go to the [Integrations](https://icalialabs.slack.com/services/new) section
3. Then look for the [Incoming WebHooks](https://icalialabs.slack.com/services/new/incoming-webhook) integration
4. Select the channel you wish to hook the service
5. You'll be redirected to a page with some steps to test the webhook, just take note of the token on the left.

You are now ready to go!


## Installation & Usage

You can install and use Tarumi as a stand-alone library, to install it just run:

```console
$ gem install tarumi
```

If you are using Rails, just add it to your Gemfile:

```ruby
gem "tarumi"
```

And then run the `bundle` command to install it:

```console
$ bundle
```

A simple example on how to use it is presented below:

```ruby
require 'tarumi'

slackBot = Tarumi::Bot.new("yourteam", "yourtoken", hash_of_options)
slackBot.ping "A text to post"
```

The example above will post a message to the `#general` channel, but you can easily customize it with the hash of options when initializing the bot:

```ruby
options = {
	username: "usernametopost",
	channel: "#anotherchannel",
	hook_name: "webhookname",
	icon_url: "http://a_url_to_an_icon.com/icon.png",
	icon_emoji: "http://a_url_to_an_emoji.com/emoji.png"
}
```
That should be it for you to easily configure the bot and start sending messages.



## Contributing

1. Fork it ( http://github.com/IcaliaLabs/tarumi/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Heroes

**Abraham Kuri**

+ [http://twitter.com/kurenn](http://twitter.com/kurenn)
+ [http://github.com/kurenn](http://github.com/kurenn)
+ [http://klout.com/#/kurenn](http://klout.com/#/kurenn)


## Copyright and license

Code and documentation copyright 2013-2014 Icalia Labs. Code released under [the MIT license](LICENSE).
