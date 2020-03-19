Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants, only: [:index, :show, :new, :create]
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :delete]
  resources :owns, only: [:delete, :show, :new, :create, :edit, :update]

  #Routes to home, a main page that the user will land on.
  get 'home', to: 'static#home'
end
