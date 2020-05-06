require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results
  end
end
