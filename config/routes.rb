Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'informations', to: 'users/registrations#new_information'
    post 'informations', to: 'users/registrations#create_information'
  end

  root to: 'tests#index'
end
