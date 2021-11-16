Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :devices, only: [:create, :show, :destroy]
    resources :logs, only: [:create]
  end
end
