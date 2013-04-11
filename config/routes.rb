NewspaperApp::Application.routes.draw do

  resources :newspapers, only: [:create, :new, :index, :show] do
    # Will this also map the show view to the new action?
    # resource :subscription, only: [:new, :show], to: 'subscription_plans#asdf'


    # resource :subscription_plans, only: [:new, :show] do
    #   collection do
    #     get :new, to: 'subscription_plans#asdf'
    #     get :show, to: 'subscription_plan#shows'
    #   end
    # end

    # Can you do these in one line with something like:
    # resource :subscription, only: [:new, :show], to: ['s_p#new', 's_p#show]
    resource :subscription, only: [:new], to: 'subscription_plans#new'
    resource :subscription, only: [:show], to: 'subscription_plans#show'

  end

  resource :subscription, only: [:create], to: 'subscription_plans#create'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
