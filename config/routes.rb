Rails.application.routes.draw do

  get 'carts/:id'=> "carts#show", as: "cart"
  get 'carts/:id/add' => "carts#add_product", as: "cart_add"
  get 'carts/:id/reduce' => "carts#reduce_quantity", as: "cart_reduce"
  resources :carts, only: :destroy

  get 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  get 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  delete 'line_items/:id' => "line_items#destroy"

  resources :orders, only: [:index, :show, :new, :create]
  devise_for :users
  root to: "pages#home"
  resources :pages, only:[:index, :create]


  resources :products
end
