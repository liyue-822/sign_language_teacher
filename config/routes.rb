=begin
Rails.application.routes.draw do

  get 'posts/new'
  get 'posts/create'
  # root 'welcome#index'
  root :to => "welcome#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
=end
Testapp::Application.routes.draw do
  get 'posts/new'
  post 'posts/create'
  post 'teach/new'
  get 'teach/new'
  post 'accounts/create_account'
  post 'accounts/create_login'
  root :to => 'welcome#index'  #:to指定了需要访问的控制器与动作
  get 'login' => 'accounts#login'
  get 'signup' => 'accounts#signup'
  post 'create_account' => 'accounts#create_account'
  post 'create_login' => 'accounts#create_login'
  resources :users
  resources :sessions
  resources :accounts
=begin
  map.connect '',:controller=>"index",:action=>"index"
=end

=begin
  resources :accounts/login
  resources :accounts/signup
=end
end
