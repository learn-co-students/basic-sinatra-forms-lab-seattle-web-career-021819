require 'sinatra/base'

class App < Sinatra::Base

  # step 1: renders basketball team form
  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    # displays results from /newteam form on /team
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @pf = params[:pf]
    @sg = params[:sg]
    @c = params[:c]
    # need to display /team page and /newteam submission results on /team
    erb :team
  end
end
