Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'recipies/index'

  get 'recipies/rvm'

  get 'how_to/instalation'

  get 'how_to/hello_world'

  get 'how_to/index'
end
