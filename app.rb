require 'sinatra'
require 'sinatra/activerecord'

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

get '/clinics' do

  erb :'clinics_index'
end

get '/clinics/:id' do

  erb :'clinics_show'
end

get '/students' do

  erb :'students_index'
end

get '/students/:id' do

  erb :'students_show'
end
