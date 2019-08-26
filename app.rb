require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/' do
    
    @piglatinier_text = PigLatinizer.new(params["string"])
    erb :user_input
  end
end