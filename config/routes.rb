Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'home/index'

  get 'home/about'

  get 'recipies/index'

  get 'recipies/rvm'

  get 'how_to/instalation'

  get 'how_to/hello_world'

  get 'how_to/index'

  get 'how_to/statiske_sider'
end
