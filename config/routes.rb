Rails.application.routes.draw do
  # delete 'doses/destroy'
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # post 'cocktails/create'
  # get 'cocktails/:id/doses/new'
  # post 'cocktails/:id/doses'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
