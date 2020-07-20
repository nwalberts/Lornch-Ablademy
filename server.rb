require 'sinatra'
require 'sinatra/activerecord'
require "sinatra/reloader" if development?
require 'sinatra/flash'

require "pry" if development? || test?


require_relative 'config/application'

configure :development, :test do
  require 'pry'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
end

configure do
  set :views, 'app/views'
end

get '/' do
  redirect '/clinics'
end

get '/test ' do
  "hello from test"
end

get '/clinics' do

  erb :'clinics/index'
end

get '/clinics/:id' do

end

get '/students' do

  erb :'students/index'
end

get '/students/:id' do


  erb :'students/show'
end
