Chatl3::Application.routes.draw do
  # Sessions
  get "/signin" => "sessions#new", as: :signin
  delete "/signout" => "sessions#destroy", as: :signout
  get "/openid_url", to: 'sessions#openid_url'

  # OmniAuth callbacks
  get '/auth/:provider/callback', to: 'sessions#create'
  post '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'
  
  # Resources
  resources :sessions, only: [ :new, :create, :destroy ]
  resources :users
  resources :venues

  # Root route
  root :to => 'welcome#index'
end
