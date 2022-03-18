Rails.application.routes.draw do
  # resources :riders

  namespace :api, defaults: { format: :json } do
    resources :riders
  end
end
