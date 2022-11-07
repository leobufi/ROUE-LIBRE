Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :film_categories, only: [:new, :create, :edit, :update, :destroy]
  resources :films
  resources :services_generals, only: [:new, :create, :edit, :update, :destroy]
  resources :services_categories, only: [:new, :create, :edit, :update, :destroy]
  resources :services, except: :show
  resources :abouts, except: :show
  resources :characters, only: [:new, :create, :edit, :update, :destroy]
  resources :generals, only: [:new, :create, :edit, :update, :destroy]

end
