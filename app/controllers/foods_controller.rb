class FoodsController < ApplicationController
	def index
		@results = facade.results(params[:q])
		@foods = facade.search(params[:q]).first(10)
	end
	

	private
	def facade
		@facade ||= FoodsFacade.new
	end
end