# TODO: Write documentation for `Alpha`
require "http/web_socket"
require "json"
require "./alpha/*"

module Alpha
  VERSION = "0.1.0"
  @@subscriber
  # TODO: Put your code here
end

yeed = Alpha::Thread.from_json(%({"id":0,"flags":[""],"posts":[{"id":0,"badges":["peen"],"flags":[""]}]}))
yeed.add_post(%({"id":1,"badges":["peen"],"flags":[""]}))
puts yeed.posts
