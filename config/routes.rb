Rails.application.routes.draw do
  resources :feeds do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:create, :new, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :favos, only: [:create, :destroy]
end
