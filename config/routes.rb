Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# DOCUMENTS CONTROLLER'S ROUTES
  get 'documents', to: 'documents#index'
end
