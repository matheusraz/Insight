Rails.application.routes.draw do

  get '/questoes' => "questoes#questoes"
  get '/questoes2' => "questoes#questoes2"


  get 'profile_prof/resultados'

  get 'simulados/simulados'
  get '/select_login' => "signin#pre-login"

  get '/area_aluno' => 'profile#area_aluno'

  get '/simulados' => 'simulados#simulados'

  get '/resultados' => 'profile_prof#resultados'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'home/profile'
  get 'users/sign_up' => 'devise/registrations#new'
  get 'users/sign_in' => 'devise/sessions#new'
  #get 'testando/testando'

  get '/signin' => 'signin#signin'

 # get 'user_info/welcome'

  root :to => 'home#home'
  #get '/signup' => 'user#signup'
  post '/welcome' => 'user_info#welcome'
  #get '/users/sign_in' => 'devise/sessions#new'
  get '/' => 'home#home'
  get '/area_aluno' => 'profile#area_aluno'
  get '/resultados_aluno' => 'profile#resultados'

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
