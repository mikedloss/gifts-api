Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    get 'heartbeat', to: 'diagnostics#index'
    resources :questions, only: [:index, :show]
    resources :gifts, only: [:index, :show]
    resources :results, only: [:show, :post, :patch]
  end
end
