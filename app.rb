require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  # post '/' do
    
  #   @piglatinier_text = PigLatinizer.new(params["user_phrase"])
  #   binding.pry
  #   erb :piglatinize
  # end
  
  post '/piglatinize' do
   
    @text = params["user_phrase"]
    
    @piglatinier_text = PigLatinizer.new()
    
    erb :piglatinize
  end

end