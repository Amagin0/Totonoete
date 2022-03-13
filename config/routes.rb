Rails.application.routes.draw do
  root 'homes#top'
  get 'home/about', to: 'homes#about'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/unsubscribe', to: 'users#destroy'

  resources :users, only: %i[index show edit]
  resources :questions, only: %i[new show list]
end
