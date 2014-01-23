DinnerDash::Application.routes.draw do
 root to: 'categories#index'
 resources :categories, only: [:show,:index] do
   resources :items,only: [:index]
 end
end
