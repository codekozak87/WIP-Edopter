Edopter::Application.routes.draw do
  #  Edopter Super Mockup/Prepwork
  get "/dummy", controller: "landing_page", action: "prepwork"

  #  Edopter Super Landing Page
  root :to => "landing_page#show"

  get "/edopter", controller: "landing_page", action: "show", as: "home"
  get "/edopter/getstarted", controller: "landing_page", action: "sign_up", as: "start"


  #  Other Edopter Routes

  get "edopter/signup", controller: "edopter", action: "signup", as: "sign_up"

  get "/edopter/signup/startup", controller: "edopter", action: "s_signup", as: "startup_signup"

  get "/edopter/signup/user", controller: "edopter", action: "u_signup", as: "user_signup"

  # Sessions

  get "/session/new" => "sessions#new", as: "new_session"

  post "/sessions" => "sessions#create", as: "sessions"

  delete "/sessions" => "sessions#destroy"


  # Routes for the Event resource:
  # CREATE
  get '/events/new', controller: 'events', action: 'new', as: 'new_event'
  post '/events', controller: 'events', action: 'create'

  # READ
  get '/events', controller: 'events', action: 'index', as: 'events'
  get '/events/:id', controller: 'events', action: 'show', as: 'event'

  # UPDATE
  get '/events/:id/edit', controller: 'events', action: 'edit', as: 'edit_event'
  put '/events/:id', controller: 'events', action: 'update'

  # DELETE
  delete '/events/:id', controller: 'events', action: 'destroy'
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get '/companies/new', controller: 'companies', action: 'new', as: 'new_company'
  post '/companies', controller: 'companies', action: 'create'

  # READ
  get '/companies', controller: 'companies', action: 'index', as: 'companies'
  get '/companies/:id', controller: 'companies', action: 'show', as: 'company'

  # UPDATE
  get '/companies/:id/edit', controller: 'companies', action: 'edit', as: 'edit_company'
  put '/companies/:id', controller: 'companies', action: 'update'

  # DELETE
  delete '/companies/:id', controller: 'companies', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)
end