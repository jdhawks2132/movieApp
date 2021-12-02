require_relative './config/environment.rb'

use Rack::MethodOverride
use MoviesController
run ApplicationController
