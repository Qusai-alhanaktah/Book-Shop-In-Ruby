Rails.application.routes.draw do
  get 'publishers/new'
  get 'publishers/create'
  get 'publishers/update'
  get 'publishers/edit'
  get 'publishers/destroy'
  get 'publishers/show'
  get 'publishers/index'
  get 'authors/new'
  get 'authors/create'
  get 'authors/update'
  get 'authors/edit'
  get 'authors/destroy'
  get 'authors/show'
  get 'authors/index'
  get 'categories/new'
  get 'categories/create'
  get 'categories/update'
  get 'categories/edit'
  get 'categories/destroy'
  get 'categories/show'
  get 'categories/index'
  get 'books/new'
  get 'books/create'
  get 'books/update'
  get 'books/edit'
  get 'books/destroy'
  get 'books/index'
  get 'books/show'
  get 'about/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'books#index'
  get 'about' => 'about#index'

  resources :books
  resources :authors
  resources :categories
  resources :publishers
end
