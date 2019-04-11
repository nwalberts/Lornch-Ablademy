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

end

get '/clinics/:id' do

end

get '/students' do

end

get '/students/:id' do

end
