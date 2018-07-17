Rails.application.routes.draw do
  devise_for :users, :controllers => { :passwords => "users/passwords" , :confirmations => "users/confirmations" }
  devise_scope :users do
    get 'signup',  to: 'devise/registrations#new'
    get 'signin',  to: 'devise/sessions#new'
    delete 'signout', to: 'devise/sessions#destroy'
  root "users#index"
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

end

