Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :doses, only: :destroy
  resources :cocktails, except: :index do
    resources :doses, only: [:new, :create, :index]
  end
end
