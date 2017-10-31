Rails.application.routes.draw do
  resources :campaigns
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :events
  namespace :api do
    namespace :v1 do
      resources :events
    end
  end
end
