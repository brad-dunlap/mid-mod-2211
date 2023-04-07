require 'rails_helper'

RSpec.describe 'Search Index Page' do
	describe 'As a user' do
		describe 'When I visit the root path and search for sweet potatoes' do
			before do 
				visit root_path
				fill_in :q, with: 'sweet potatoes'
				click_on 'Search'
			end

			it 'I see search results' do
				expect(page).to have_content('Search Results')
				expect(page).to have_content('Total Results: 38114')
				expect(page).to have_content('First 10 Results:')
				expect(page).to have_content('GTIN/UPC code: 728229015529')
				expect(page).to have_content('Description: SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY')
				expect(page).to have_content('Brand Owner: The Hain Celestial Group, Inc.')
				expect(page).to have_content('Ingredients: A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT.')
			end
		end
	end
end