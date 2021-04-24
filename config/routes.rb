Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'characters#index'
  get '/new', to: 'characters#new'
  post '/characters', to: 'characters#create'

  get '/character_subclasses/new', to: 'character_subclasses#new'
  post '/character_subclasses', to: 'character_subclasses#create'

  get '/races', to: 'races#index'

  get '/classes', to: 'classes#index'
  get '/classes/:id/subclasses', to: 'subclasses#index'

end
