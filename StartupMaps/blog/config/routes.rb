Blog::Application.routes.draw do
 
 
  get "homepage/index"
  get "homepage/show"
  devise_for :entities, :controllers => {:registrations => "entities/registrations", 
                                         :sessions => "entities/sessions", 
                                         :confirmations => "entities/confirmations",
                                         :unlocks => "entities/unlocks",
                                         :passwords => "entities/passwords"}


  resources :groups do
    get "list_group_members"
  end  

  resources :entities do
    post "show_unachieved_badges"  
    post "create_startup"
    post "create_service"
    post "create_investor"
  end  

post "entities/edit"

  resources :startups 
  resources :messages


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  
  # Maps routes by Alia Tarek
   resources :maps do
    get "show_startups" 
    get "show_investors"
    get "show_services"
    get "show_launched"
    get "show_not_launched"
    get "show_offline"
    get "show_online"
    get "show_merged"
    end

 # You can have the root of your site routed with "root"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes"

  resources :projects do
    get "change_launch_status", on: :member, as: :launch
    get "suggest"
    get "show_suggested"
    get "merge_request"
  end  



  resources :friendships do
    get "destroy"
    get "new"
    patch :accept_friend
    get :accept_friend
    patch :reject_friend
    get :reject_friend
  end

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root 'homepage#index'


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
