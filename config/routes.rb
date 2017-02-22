Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create, :destroy, :edit, :update ]
  end
  resources :reviews, only: [ :show ]

  namespace :admin do
    resources :restaurants do
      resources :reviews, only: [ :index, :new, :create, :destroy, :edit, :update ]
    end
  end
end
