Rails.application.routes.draw do
  
  resources :enfermeras_pacientes
  resources :enfermera_pacientes
  resources :interactions
  resources :simbols
  resources :pacientes
  root'pages#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  resources :users
  resources :reportes


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
