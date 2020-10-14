require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input 
    end 

    post '/piglatinize' do 
         n = PigLatinizer.new
         @string = n.piglatinize_sentence(params[:user_phrase])
        erb :results
    end 
end