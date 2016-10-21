Rails.application.routes.draw do
  devise_for :users
  root :to => 'pages#home'
  get 'prueba' => 'pages#prueba'

  # Users Controller
  get 'patients' => 'users#patients'
end
