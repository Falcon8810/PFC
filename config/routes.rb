Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#top'
  get 'my_page' => 'users#show', as: 'my_page'
  # resource :users, only: [:show] do
  #   collection do
  #     get "unsubscribe"
  #     patch "withdraw"
  #   end
  # end
  resources :trainings, :training_details, :bodys, :meals
  resources :events, except: [:show]

end