Rails.application.routes.draw do

# get "/users" => "users#index", as: :users
# get "/users/new" => "users#new", as: :new
# get "/login" => "sessions#new" as: :login
# delete "/logout" => "sessions#destroy" as: :logout
# get "/welcome/index" => "welcome#index" as: :welcome
# get "/articles/:article_id/comments" => "comments#index" as: :comments
# get "/articles/:article_id/comments/new" => "comments#new" as: :newcomment
# get "/articles/:article_id/comments/:id/edit" => "comments#edit" as: :editcomment
# get "/articles/:article_id/comments/:id" => "comments#show" as: :showcomment
# get "/articles" => "articles#index" as: :articles
# get "/articles/new" => "articles#new" as: :newarticle
# get "/articles/:id/edit" => "articles#edit" as: :editarticle
# get "/articles/:id" => "articles#show" as: :showarticles

  # post '/rate' => 'rater#create', :as => 'rate'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
get "users" => "users#index"
get "users/new" => "users#new"
post "users" => "users#create"

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/logout' => 'sessions#destroy'

Rails.application.routes.draw do

  get 'welcome/index'


  post '/rate' => 'rater#create', :as => 'rate'
  resources :articles do
    resources :comments
  end
  
  root 'welcome#index'
end
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
