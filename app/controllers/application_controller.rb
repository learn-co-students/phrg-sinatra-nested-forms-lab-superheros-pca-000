require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team])
    params[:team][:members].each do |mem|
      Hero.new(mem)
    end
    @hero1 = Hero.all[0]
    @hero2 = Hero.all[1]
    @hero3 = Hero.all[2]
    erb :team
  end


end