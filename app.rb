require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './model/message'

post "/" do
  Message.create(body: params[:message][:body])
  redirect '/'
end

get "/" do
  @messages = Message.all.order('id desc')
  erb :index
end
