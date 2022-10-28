Rails.application.routes.draw do

  get 'carts/:id'=> "carts#show", as: "cart"
  resources :carts, only: :destroy

  get 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  get 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  delete 'line_items/:id' => "line_items#destroy"

  resources :orders, only: [:index, :show, :new, :create]
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: "pages#home"


  resources :products
end
