Rails.application.routes.draw do
  
  resources :pacientes
  root'pages#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users
  resources :pacientes

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
