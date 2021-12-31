Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#top'
  get 'my_page' => 'users#show', as: 'my_page'

  resources :trainings
  # 現状1対1のテーブルになってしまっているから不要
  # resources :training_details
  resources :bodies, except: [:show]
  resources :meals, except: [:show]
  resources :events, except: [:show]

end