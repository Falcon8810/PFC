Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#top'
  get 'my_page' => 'users#show', as: 'my_page'
  resource :users, only: [:edit, :update] do
    collection do
      get "unsubscribe"
      patch "withdraw"
    end
  end
  resources :trainings, :bodys, :meals
  resources :events, except: [:show]

end