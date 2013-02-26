Chatl3::Application.routes.draw do
  # OmniAuth callbacks
  match '/auth/:provider/callback', to: 'sessions#create'
  match '/auth/failure', to: 'sessions#failure'
  
  # Sessions
  match "/signup" => "users#new", as: :signup
  match "/signin" => "sessions#new", as: :signin
  match "/signout" => "sessions#destroy", as: :signout
  match "/openid_url", to: 'sessions#openid_url'

  # Resources
  resources :users
  resources :venues

  # Root route
  root :to => 'welcome#index'
end
