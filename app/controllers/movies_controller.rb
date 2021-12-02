class MoviesController < ApplicationController
	get '/movies' do
		@movies = Movie.all
		erb :movies
	end

	get '/movies/new' do
		erb :new
	end

	get '/movies/:id' do
		get_movie
		erb :show
	end

	post '/movies' do
		# create new post
		# redirect the user
		@movie = Movie.create(params)
		redirect "/movies/#{@movie.id}"
	end

	get '/movies/:id/edit' do
		get_movie
		erb :edit
	end

	patch '/movies/:id' do
		get_movie
		@movie.update(
			title: params[:title],
			director: params[:director],
			description: params[:description],
			showing: params[:showing],
		)
		redirect "/movies/#{@movie.id}"

		# no view
		# update object
	end

	delete '/movies/:id' do
		# no view
		get_movie
		@movie.destroy

		redirect '/movies'
	end
end
