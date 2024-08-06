class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end
  get 'gossips/new' do
    erb :index
  end
end
