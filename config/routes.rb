Rails.application.routes.draw do
  root to: 'tops#top'
  resources :feeds do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:create, :new, :show, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :favos, only: [:create, :destroy]
end
