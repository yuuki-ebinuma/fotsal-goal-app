Rails.application.routes.draw do
  devise_for :operations
  devise_for :users
  root to: "tournaments#index"
  resources :tournaments do
    resources :entries, only:[:index,:create,:new,:show]
  end
end




