require 'twitter_ebooks'

# This is an example bot definition with event handlers commented out
# You can define and instantiate as many bots as you like

class MyBot < Ebooks::Bot
  # Configuration here applies to all MyBots
  def configure
    # Consumer details come from registering an app at https://dev.twitter.com/
    # Once you have consumer details, use "ebooks auth" for new access tokens
    self.consumer_key = 'y25RQrgviBe2GhMwVsnesR97F' # Your app consumer key
    self.consumer_secret = 'TN9Id7QEfdRgPplnGOIkjX95YpaEncaHp5cYlU3KpvpnijvF7o' # Your app consumer secret

    # Users to block instead of interacting with
    self.blacklist = ['realdonaldtrump']

    # Range in seconds to randomize delay when bot.delay is called
    self.delay_range = 1..6
  end

  def on_startup
    model = Ebooks::Model.load("model/fontiago.model")
    scheduler.every '1h' do
      # Tweet something every 24 hours
      # See https://github.com/jmettraux/rufus-scheduler
      tweet(model.make_statement(rand(139) + 1))
      # pictweet("hi", "cuteselfie.jpg")
    end
  end

  def on_message(dm)
    # Reply to a DM
    # reply(dm, "secret secrets")
  end

  def on_follow(user)
    # Follow a user back
    # follow(user.screen_name)
  end

  def on_mention(tweet)
    # Reply to a mention
    model = Ebooks::Model.load("model/fontiago.model")
    reply(tweet, model.make_response(tweet.text, rand(139) + 1))
  end

  def on_timeline(tweet)
    # Reply to a tweet in the bot's timeline
    # reply(tweet, "nice tweet")
  end

  def on_favorite(user, tweet)
    # Follow user who just favorited bot's tweet
    # follow(user.screen_name)
  end

  def on_retweet(tweet)
    # Follow user who just retweeted bot's tweet
    # follow(tweet.user.screen_name)
  end
end

# Make a MyBot and attach it to an account
MyBot.new("fontiagoebooks") do |bot|
  bot.access_token = "774831954701131776-yeWVXVgluDLwF6YXtMR0wesSAf2hZEp" # Token connecting the app to this account
  bot.access_token_secret = "syZr9kIMm6AhF1mQRBK4TdlVXhJ5cDjI1Zd2irk8qkE4w" # Secret connecting the app to this account
end
