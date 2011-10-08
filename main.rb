#!/usr/bin/env jruby

Dir.glob('lib/*.jar') { | jar | 
  require File.expand_path("../#{jar}", __FILE__)
}

def twitter4j
  Java::Twitter4j
end

java_import twitter4j.Status
java_import twitter4j.StatusAdapter
java_import twitter4j.StatusDeletionNotice
java_import twitter4j.StatusListener
java_import twitter4j.TwitterException
java_import twitter4j.TwitterStream
java_import twitter4j.TwitterStreamFactory
