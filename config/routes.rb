Rails.application.routes.draw do
  root 'homes#top'
  get 'home/about' => 'homes#about'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  resources :users, only: %i[new index show create edit]
  resources :questions, only: %i[new show list]
end
