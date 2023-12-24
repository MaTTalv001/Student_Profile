Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: %i[index new create]
  get 'login', to: 'user_session#new'
  post 'login', to: 'user_session#create'
  delete 'logout', to: 'user_session#destroy'
  root 'static_pages#top'
end
