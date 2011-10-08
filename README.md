# Twitter4j Sample #

This project is meant to show how JRuby can be used to read from a Twitter stream. It shows how to interface with a Java class, including loading jar files, working with java classes, and implementation of an interface through a block.

## oAuth Note ##

In order to authorize with Twitter's oAuth provider, you will need to provide it with authentication credentials. This example uses a twitter4j.properties file, the format being described here:

http://twitter4j.org/en/configuration.html

As it contains sensitive authentication information, it is ignored via .gitignore. 
