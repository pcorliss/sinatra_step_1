require './model/message'

Message.destroy_all
Message.create(name: 'Phil C', body: 'Sinatra is sooooo coool...')
Message.create(name: 'Jane D', body: 'I like turtles...')
