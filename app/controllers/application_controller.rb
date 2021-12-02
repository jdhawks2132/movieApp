class ApplicationController < Sinatra::Base
	configure { set :views, 'app/views' }

  # <%= %> interpolates ruby code in views that you WANT user to see
  # <% %> interpolates ruby code in views that you DONT WANT user to see
	get '/' do
		erb :index
	end

  def get_movie
    @movie = Movie.find_by_id(params[:id])
  end
  
end
