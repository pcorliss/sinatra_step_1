require 'sinatra'
require 'sinatra/activerecord'
require 'dalli'
require 'memcachier'
require "net/http"
require "uri"
require './config/environments'
require './model/message'

post "/" do
  Message.create(body: params[:message][:body], name: params[:message][:name]) if enabled?
  redirect '/'
end

get "/" do
  @messages = Message.all.order('id desc')
  enabled? ? erb(:index) : "Not yet..."
end

def enabled?
  cache = Dalli::Client.new
  features = cache.fetch('features', 15) do
    response = Net::HTTP.get_response(URI.parse('http://vuln.alttab.org/features'))
    JSON.parse(response.body)
  end
  features['step1']
end
