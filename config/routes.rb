Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create' #ここを追記します
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get 'books/:id' => 'books#show'
  get 'books/edit'
  resources :books
  get 'top' => 'homes#top'
  root 'books#index' # ルートパスをbooksコントローラーのindexアクションに指定
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
