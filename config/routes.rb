Rails.application.routes.draw do
 
  
  get '/' => 'home#index'
   #게시판
  # login 이후 page
  get 'home/mainpage'
  
  get 'home/calendar'
  
   #board Create
  get '/board/b_new' => 'board#b_new'
  post '/board/b_create' => 'board#b_create'
   #board Show
  get '/board/b_index'
  get '/board/:id' => 'board#b_show'
   #board Delete
  get '/board/b_delete/:post_id' => 'board#b_delete'
   #board Update
  get '/board/b_update/:post_id' => 'board#b_update'
   #board Replie
  get '/board/:id/create_reply' => 'board#create_reply'
  
  get 'home/signup'
  
  #bootstrap-main
  get 'home/main'
  get 'home/flot'
  get 'home/morris'
  
  devise_for :users
  root 'home#index'

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
  #   resources :products do
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
