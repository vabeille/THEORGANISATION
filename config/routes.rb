Rails.application.routes.draw do
  # get 'documents/new'
  # get 'documents/create'
  # get 'documents/update'
  # get 'documents/edit'
  # get 'documents/destroy'
  # get 'documents/index'
  # get 'documents/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# DOCUMENTS CONTROLLER'S ROUTES

resources :documents

end
