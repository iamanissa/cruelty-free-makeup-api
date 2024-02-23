Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'health/index'

  # Defines the root path route ("/")
  root "brands#index"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :brands do
        resources :products
      end
    end
  end

  resources :brands
  # resources :brands do
  #   resources :products
  # end
end
