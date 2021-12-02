require_relative './config/environment'
require 'sinatra/activerecord/rake'

#Runs pry while removing SQL logging from Active Record
desc "pry session"
task :console do
#You can comment out this line if you don't want to see the SQL print out
#However, it's helpful for debugging
ActiveRecord::Base.logger = Logger.new(STDOUT)
  
  Pry.start
end