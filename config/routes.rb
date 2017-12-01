Rails.application.routes.draw do
  resources :campaigns
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :events
  namespace :api do
    namespace :v1 do
      resources :events
      resources :campaigns do
      	resources :campaign_registrations
      	get 'registered_or_nah', to: 'campaign_registrations#registered_or_nah'
      	delete 'campaign_registration/remove', to: 'campaign_registrations#destroy'
      end
      get 'user_campaigns', to: 'campaign_registrations#user_campaigns'
    end
  end
end
