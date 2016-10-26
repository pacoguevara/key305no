require 'api_constraints'

Rails.application.routes.draw do
  devise_for :users
  root :to => 'pages#home'
  get 'prueba' => 'pages#prueba'

  # Users Controller
  get 'patients' => 'users#patients'

  # API V1
  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users 
    end
  end
end
