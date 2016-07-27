require "rubygems"
require "bundler"
require 'test/unit'
require 'test/unit/assertions'
require_relative '../app/app'

module Kakikas

	class EmailSender < Test::Unit::TestCase

		def setup
			@email_sender = Kakikas::Main
		end

		def test_send_email()
			result = @email_sender.send_order_and_feedback('09000000000','Test: 3 Large size Cocojam')
			assert_equal(true,result)
		end

		def test_send_invalid_contact_or_emailaddress()
			result = @email_sender.send_order_and_feedback('','Test: 3 Large size Cocojam')
			assert_equal(false,result)
		end

		def test_send_invalid_order()
			result = @email_sender.send_order_and_feedback('09000000000','')
			assert_equal(false,result)
		end

	end

end
