require 'sinatra'
require "sinatra/reloader"
require 'sequel'


get '/' do 
  erb :index
end

get '/page1' do
  erb :page1
end 

get '/page2' do 
  erb :page2
end

get '/page3' do
  erb :page3
end

get '/page4' do 
  erb :page4
end

post '/people' do
  DB = Sequel.sqlite
  @people_store = DB[:people]
  email = params[:email]
  @people_store.insert(:email => email)
end
