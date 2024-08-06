require 'gossip'
class ApplicationController < Sinatra::Base
  get '/' do
    erb :index, locals: { gossips: Gossip.all }
  end
  get '/gossips/new/' do
    erb :new_gossip
  end
  post '/gossips/new/' do
    Gossip.new(params['gossip_author'], params['gossip_content']).save
    redirect '/'
  end
  get '/gossips/:id/' do
    erb :show_gossip, locals: { gossip: Gossip.find(params['id']), id: params['id'] }
  end
  get '/gossips/:id/edit/' do
    gossip = Gossip.find(params['id'])
    erb :edit_gossip, locals: { gossip:, id: params['id'] }
  end
  post '/gossips/:id/update/' do
    gossip = Gossip.find(params['id'])
    gossip.update(params['gossip_author'], params['gossip_content'])
    redirect "/gossips/#{params['id']}/"
  end
end
