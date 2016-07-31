Rails.application.routes.draw do
  resources :like_recipes, except: [:new, :update, :edit]
  resources :recipe_ingredients, except: [:new, :edit]
  resources :recipes, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end