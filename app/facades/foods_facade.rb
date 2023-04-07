class FoodsFacade
	def initialize
		@service = foods_service
	end

	def results(search)
		results = @service.food_search(search)
	end

	def search(search)
		results = @service.food_search(search)
		results[:foods].map do |food|
			Food.new(food)
		end
	end

	private
	def foods_service
		@foods_service ||= FoodsService.new
	end
end