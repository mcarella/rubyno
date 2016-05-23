require 'rubygems'
require 'sinatra'

get '/multiply/:x/:y' do
	if params[:x] && params[:y]

		check_a = Integer(params[:x]) rescue false
		check_b = Integer(params[:y]) rescue false
		validation = check_a && check_b

		if validation
			x = params[:x].to_i
			y = params[:y].to_i
			@result = x * y
			erb :layout
		else
			"かずをかいてください"
		end
   	end
end
