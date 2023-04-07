require 'rails_helper'

RSpec.describe Food do
	before(:each) do
		@steak = {
			"gtinUpc": "492111402857",
			"description": "BEEF",
			"brandOwner": "STORE BRAND",
			"ingredients": "BEEF"
		}
		@food = Food.new(@steak)
	end

	it 'exists with attributes' do

		expect(@food.gtinUpc).to eq("492111402857")
		expect(@food.brandOwner).to eq("STORE BRAND")
		expect(@food.ingredients).to eq("BEEF")
	end
end