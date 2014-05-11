Blog::Application.routes.draw do
 
  get "group_invitation/invite"
  resources :groups do
    get "list_group_members"
  end  

  resources :startups

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  
  resources :projects do

    get "change_launch_status", on: :member, as: :launch
    get "suggest"
    get "show_suggested"
    get "merge_request"
  end  

  get 'posts/index'
  get 'posts/input_create'
  get 'posts/create'
  get 'posts/input_update'
  get 'posts/update'
  get 'posts/delete'
  get 'posts/red'

  get 'group_invitation/invite'
  get 'group_invitation/search'
  get 'group_invitation/validate'

  get 'group_invitation/accept'
  get 'group_invitation/decline'
  get 'group_invitation/confirm'

  get 'groups/index'
  get 'groups/show'

  get 'groups/create2'

  get 'groups/new'

  # You can have the root of your site routed with "root"
  root to: 'posts#red'

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
