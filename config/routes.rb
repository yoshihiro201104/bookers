Rails.application.routes.draw do
  resources :books
  get 'top' => 'homes#top'
  root 'homes#top'
end