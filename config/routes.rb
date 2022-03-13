Rails.application.routes.draw do
  root 'homes#top'
  get 'home/about' => 'homes#about'

  resources :users, only: %i[index show edit]
  resources :questions, only: %i[new show list]
end
