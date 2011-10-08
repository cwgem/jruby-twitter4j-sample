#!/usr/bin/env jruby

require 'java'

Dir.glob('lib/*.jar') { | jar | 
  require File.expand_path("../#{jar}", __FILE__)
}

def twitter4j
  Java::Twitter4j
end

import twitter4j.Status
import twitter4j.Twitter
import twitter4j.TwitterException
import twitter4j.TwitterFactory
import twitter4j.User

begin
  twitter = TwitterFactory.new.getInstance
  user = twitter.verifyCredentials
  statuses = twitter.getHomeTimeline
  puts "Showing @#{user.getScreenName}'s home timeline"
  statuses.each { |status|
    puts "@#{status.getUser.getScreenName} - #{status.getText}"
  }
rescue TwitterException => te
  te.printStackTrace
  puts "Failed to get timeline: #{te.getMessage}"
  exit(-1)
end
