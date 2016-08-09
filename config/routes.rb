Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'recipies/index'

  get 'recipies/instalation'

  get 'recipies/rvm'

  get 'recipies/hello_world'
end
