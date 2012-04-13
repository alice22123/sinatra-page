require 'sinatra'
require "sinatra/reloader"
require 'sequel'


get '/' do 
  erb :index
end

get '/page1' do
  @images = ["shelterlogo.jpg"]
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

get '/page5' do
	erb :page5
end 

get '/page6' do 
	erb :page6 
end

get '/page7' do 
	erb :page7
end 

get '/order' do
  erb :order
end


post '/people' do
  DB = Sequel.sqlite
  @people_store = DB[:people]
  email = params[:email]
  @people_store.insert(:email => email)
end
