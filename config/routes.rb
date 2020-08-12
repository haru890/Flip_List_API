Rails.application.routes.draw do
  resources :flips, only: [:index, :create, :update, :destroy]
end
