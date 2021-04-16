Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'characters#index'

  get '/races', to: 'races#index'

  get '/classes', to: 'classes#index'
  get '/classes/:id/subclasses', to: 'subclasses#index'
end
