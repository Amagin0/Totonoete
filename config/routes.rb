Rails.application.routes.draw do
  get 'evaluations/create'
  root 'homes#top'
  get 'home/about', to: 'homes#about'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/unsubscribe', to: 'users#destroy'

  resources :users
  resources :questions do
    resources :evaluations, only: %i[create]
  end
end
