# Twitter4j Sample #

This project is meant to show how JRuby can be used to read from a Twitter stream. It shows in basic form how to load jar files, work with a Java class, and handle a Java exception.

## oAuth Note ##

In order to authorize with Twitter's oAuth provider, you will need to provide it with authentication credentials. This example uses a twitter4j.properties file, the format being described here:

http://twitter4j.org/en/configuration.html

As it contains sensitive authentication information, it is ignored via .gitignore. 

## Requirements ##

This project was built with the current JRuby stable, 1.6.4. It is recommended to use this to get up and running, though it might work with later versions.

twitter4j jars are already included.
