require 'rails_helper'

RSpec.describe FoodsService do
	context '#food_search' do
		it 'returns instances of food items that match the search term' do
			service = FoodsService.new

			results = service.food_search('sweet potatoes')

			expect(results).to be_an(Hash)
			expect(results.size).to eq(7)
			first_food = results[:foods].first
			
			expect(first_food[:gtinUpc]).to be_a(String)
			expect(first_food[:description]).to be_a(String)
			expect(first_food[:brandOwner]).to be_a(String)
			expect(first_food[:ingredients]).to be_a(String)
		end
	end
end