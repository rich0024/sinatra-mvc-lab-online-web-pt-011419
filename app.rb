require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latinize = PigLatinizer.new
    @results = @pig_latinize.piglatinize(params[:user_phrase])

    erb :results
  end

end
