Rails.application.routes.draw do
  get 'wellcome/index'

  resources :profiles
  # get 'homs/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homs#index'
end
