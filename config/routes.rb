Rails.application.routes.draw do
  resources :locations
  get 'galeria/galeria'


  get 'inicio/inicio'

  get 'acercade/acercade'

  mount Ckeditor::Engine => '/ckeditor'
  resources :articles
root :to => "locations#index"

  


  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :products do
    get :who_bought, on: :member
  end

  scope '(:locale)' do
    
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store_index', via: :all
    #root 'acercade#acercade', as: 'acercade_acercade', via: :all
  end
end
