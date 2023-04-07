class FoodsService

  def food_search(search)
    response = conn.get("/fdc/v1/foods/search?api_key=#{ENV['FOOD_API_KEY']}&ingredients=#{search}&numberOfResultsPerPage=1000&pageSize=1000")
    JSON.parse(response.body, symbolize_names: true)
	end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov')
  end
end