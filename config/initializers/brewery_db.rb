def get_api_key
	api_file = Rails.root.join('.brewery_db_api')
	if File.exist?(api_file)
		File.read(api_file).chomp
	end
end

brewery_db = BreweryDB::Client.new do |config|
	config.api_key = get_api_key
	config.logger = Rails.logger
end