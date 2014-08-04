require "teachers_pet/version"
require 'sinatra'
require 'sequel'
require 'lazy_high_charts'
require_relative 'charts'
require_relative 'templates'

DB = Sequel.connect(:adapter => 'postgres', :database => 'teachers_pet_development')
require_relative 'models/report'

set :public_folder, 'static'

module TeachersPet
end

get '/' do
  erb :index
end

get '/rubocop' do
  erb :rubocop
end

get '/simplecov' do
  erb :simplecov
end

get '/hey_teacher' do
  Report.generate_random_entry
end
