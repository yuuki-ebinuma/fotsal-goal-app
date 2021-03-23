Rails.application.routes.draw do
  devise_for :operations
  devise_for :users
  root to: "tournaments#index"
  resources :tournaments do
    resources :entrys, only:[:index,:create,:new]
  end
end
