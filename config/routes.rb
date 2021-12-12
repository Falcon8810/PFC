Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#top'
  resource :users
  resources :products, only: [:index, :show]
  # get 'meals/index'
  # get 'meals/new'
  # get 'meals/create'
  # get 'meals/show'
  # get 'meals/edit'
  # get 'meals/update'
  # get 'meals/destroy'
  # get 'bodys/index'
  # get 'bodys/new'
  # get 'bodys/create'
  # get 'bodys/show'
  # get 'bodys/edit'
  # get 'bodys/update'
  # get 'bodys/destroy'
  # get 'events/index'
  # get 'events/new'
  # get 'events/create'
  # get 'events/edit'
  # get 'events/update'
  # get 'events/destroy'
  # get 'trainings/index'
  # get 'trainings/new'
  # get 'trainings/create'
  # get 'trainings/show'
  # get 'trainings/edit'
  # get 'trainings/update'
  # get 'trainings/destroy'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/unsubscribe'
  # get 'users/withdraw'

end
