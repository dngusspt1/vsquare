Rails.application.routes.draw do
 
  root 'home#index'
  resources :users, only: [:new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  
  get 'home/index'
  get "select" => 'home#select'
  get "index" => 'home#index'
  get "choice" => 'home#choice'
  get "choice2" => 'home#choice2'
  get "random" => 'home#random'
  
  get "first" => 'home#first'
  get "second" => 'home#second'
  get "third" => 'home#third'
  get "fourth" => 'home#fourth'
  get "fifth" => 'home#fifth'
  get "sixth" => 'home#sixth'
  get "seventh" => 'home#seventh'
  get "eighth" => 'home#eighth'
  get "ninth" => 'home#ninth'
  
  get "ready" => 'home#ready'
  get "one" => 'home#one'
  get "two" => 'home#two'
  get "three" => 'home#three'
  get "four" => 'home#four'
  get "five" => 'home#five'
  get "six" => 'home#six'
  get "seven" => 'home#seven'
  get "eight" => 'home#eight'
  get "nine" => 'home#nine'

  
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :prohhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhducts do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
