Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :questions, only: [:index, :show]
    resources :gifts, only: [:index, :show]
  end
end
