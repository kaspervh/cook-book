Rails.application.routes.draw do

  resources :users

  root 'home#index'

  get 'home/index'

  get 'home/about'

  get 'recipies/index'

  get 'recipies/rvm'

  get 'how_to/instalation'

  get 'how_to/hello_world'

  get 'how_to/index'

  get 'how_to/statiske_sider'

  namespace :admin do
    resources :pages
    resources :admins
  end
end
