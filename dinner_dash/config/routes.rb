DinnerDash::Application.routes.draw do
 root to: 'items#index'
 resources :categories, only: [:show]
end
