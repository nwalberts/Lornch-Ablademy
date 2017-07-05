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
  @clinics = Clinic.all

  erb :'clinics_index'
end

get '/clinics/:id' do
  @clinic = Clinic.find(params[:id])
  @students = @clinic.students
  @comments = @clinic.comments

  erb :'clinics_show'
end

get '/students' do
  @students = Student.all

  erb :'students_index'
end

get '/students/:id' do
  @student = Student.find(params[:id])
  @clinics = @student.clinics

  erb :'students_show'
end
