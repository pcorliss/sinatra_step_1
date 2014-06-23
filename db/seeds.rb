require './model/message'

Control.destroy_all
Message.destroy_all
Message.create(body: 'Sinatra is sooooo coool...')
Message.create(body: 'I like turtles...')
