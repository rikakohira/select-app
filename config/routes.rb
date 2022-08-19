Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'inputs', to: 'users/registrations#new_input'
    post 'inputs', to: 'users/registrations#create_input'
  end

  root to: 'tests#index'
end
