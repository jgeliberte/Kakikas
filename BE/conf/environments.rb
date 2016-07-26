require 'sequel'

module Kakikas
	# Default database connections for local development.
	# @DEFAULT_CONN = {database: 'development_portfolio', user: 'postgres', password: 'secret123', host: 'localhost'}
	# @DEFAULT_TEST_CONN = {database: 'test_portfolio', user: 'postgres', password: 'secret123', host: 'localhost'}
	# connection_string_prod = "postgres://mwxcelbzuyyuyi:p8bXn76E_kQ3xTh7_Ecna2N_sQ@ec2-54-225-121-93.compute-1.amazonaws.com:5432/d4lof10hqdsovt"
	# connection_string = "postgres://#{@DEFAULT_CONN[:user]}:#{@DEFAULT_CONN[:password]}@#{@DEFAULT_CONN[:host]}/#{@DEFAULT_CONN[:database]}"
	# DB = Sequel.connect(connection_string)
	Mail.defaults do
		delivery_method :smtp, { :address   => "smtp.gmail.com",
			:port      => 587,
			:domain    => "localhost",
			:user_name => "jgeliberte@katanatechworks.com",
			:password  => "decmeister11",
			:authentication => 'plain',
			:enable_starttls_auto => true }
		end
	end