require 'rubygems'
require 'sinatra'
require 'pg'
require 'mail'
require_relative '../conf/environments'
# require_relative '../model/user'
require_relative './routes'


module Kakikas
	class Main < Sinatra::Base

		def self.send_order_and_feedback(email_or_contact,message_or_order)
			result = false
			if email_or_contact != '' && message_or_order != ''
				begin
					mail = Mail.deliver do
						to 'decsneaky@gmail.com'
						from 'Ka kika syrup'
						subject 'Coconut Jam Orders'
						html_part do
							content_type 'text/html; charset=UTF-8'
							body '<b>Ordered by :'<< email_or_contact<<' </b> <br> <b>Orders: '<< message_or_order <<'</b>' 
						end
					end
					result = true
				rescue
				puts 'Invalid Email/Contact # or Empty Feedback/Order'
				end
			end
			return result
		end
	end
end