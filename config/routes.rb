Rails.application.routes.draw do
	resources :events
  namespace :api do
    namespace :v1 do
      resources :events
    end
  end
end
