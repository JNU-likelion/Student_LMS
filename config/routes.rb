Rails.application.routes.draw do
 
  
  get '/' => 'home#index'
   #게시판
  # login 이후 page
  get 'home/mainpage'
  
  get 'home/calendar'
  
 get 'home/signup_new' 
  
   #board Create
  get '/board/b_new' => 'board#b_new'
  post '/board/b_create' => 'board#b_create'
   #board Show
  get '/board/b_index'
  get '/board/:id' => 'board#b_show'
   #board Delete
  get '/board/delete/:id' => 'board#delete'
   #board Update
  get '/board/b_update/:id' => 'board#b_update'
   #board Replie
  get '/board/:id/create_reply' => 'board#create_reply'
  post '/board/b_modify/:id' => 'board#b_modify'
  

  
  #bootstrap-main(학생용/부모님용)
  get 'home/main'
  get 'home/flot'
  get 'home/morris'
  get 'home/tables'
  get 'home/forms'
  #bootstrap-main(선생님용)
  get 'home/teacher'
  
  get 'home/signup'

  get 'login_check' => 'home#login'
  post '/home/signup_new' => 'signup_new'
  
  
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
