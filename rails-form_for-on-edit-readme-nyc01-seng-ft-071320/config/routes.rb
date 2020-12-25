Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'categories/show'

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
<<<<<<< HEAD:rails-form_for-on-edit-readme-nyc01-seng-ft-071320/config/routes.rb
=======
  resources :categories
>>>>>>> feff73372d39e07d3cc59ffa848c21a662f39454:config/routes.rb
end
