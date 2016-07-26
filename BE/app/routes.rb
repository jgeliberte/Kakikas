require 'rubygems'
require 'sinatra'
require_relative './app'

module Kakikas

  class Routes < Sinatra::Base

    before do
      @obj = Kakikas::Main
    end

    configure do
      set :views          , File.expand_path('../../../FE/views', __FILE__)
      set :public          , File.expand_path('../../../FE/public', __FILE__)
      set :root           , File.dirname(__FILE__)
    end

    helpers do
      include Rack::Utils
      alias_method :h, :escape_html
    end
    
    get '/' do
      erb :index
    end

    post '/send_feedback' do
      result = @obj.send_order_and_feedback(params[:email_or_contact],params[:message_or_order])
      if result == true
        redirect '/'
      end
    end
  end
end