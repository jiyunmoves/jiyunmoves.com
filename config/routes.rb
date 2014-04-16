Jiyunmoves::Application.routes.draw do
  get "shop/shop"
  get "shop/shop_category"
  get "shop/product"
  get "shop/shop_upload"
  post "shop/shop_upload_complete"
  get "shop/shop_edit"
  get "shop/subcribe"
  get "shop/buy"
  get "gallery/gallery"
  get "gallery/category/:category"=>'gallery#gallery_category'
  get "gallery/gallery_upload"
  post "gallery/gallery_upload_complete"
  get "gallery/gallery_edit"
  root "jiyunmoves#index"
  get "jiyunmoves/about"
  post "user/login"
  get "user/logout"
  get "blog/blog"
  get "/:category"=>'blog#blog_category'
  get "blog/blog_each/:id"=>'blog#blog_each'
  get "blog/blog_edit/:id"=>'blog#blog_edit'
  post "blog/blog_edit_complete"
  get "blog/blog_write"
  post "blog/blog_write_complete"
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
