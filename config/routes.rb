Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'
  resources :sessions
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :rentals
  get "user/capabilities", to: "sessions#capabilities"
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
