Rails.application.routes.draw do
  resources :quotations
  resources :tasks
  resources :task_sub_categories
  resources :task_categories
  resources :missions
  resources :main_objects
  resources :object_types
  resources :users
  resources :user_types
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
