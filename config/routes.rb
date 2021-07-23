Rails.application.routes.draw do
  resources :users
  resources :books
  resources :publishing_companies

  post 'sing_in' => 'main/create'
  delete 'sing_out' => 'main/destroy'
end
