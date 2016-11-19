Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :pokemons

  resources :catcheds, only: [:index, :new, :create] do
    member do
      get :level_up
    end
  end

  root 'pokemons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
