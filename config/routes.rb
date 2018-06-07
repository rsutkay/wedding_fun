Rails.application.routes.draw do
  root :to => "drinks#index"
  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the Brand resource:
  # CREATE
  get "/brands/new", :controller => "brands", :action => "new"
  post "/create_brand", :controller => "brands", :action => "create"

  # READ
  get "/brands", :controller => "brands", :action => "index"
  get "/brands/:id", :controller => "brands", :action => "show"

  # UPDATE
  get "/brands/:id/edit", :controller => "brands", :action => "edit"
  post "/update_brand/:id", :controller => "brands", :action => "update"

  # DELETE
  get "/delete_brand/:id", :controller => "brands", :action => "destroy"
  #------------------------------

  # Routes for the Vote resource:
  # CREATE
  get "/votes/new", :controller => "votes", :action => "new"
  post "/create_vote", :controller => "votes", :action => "create"

  # READ
  get "/votes", :controller => "votes", :action => "index"
  get "/votes/:id", :controller => "votes", :action => "show"

  # UPDATE
  get "/votes/:id/edit", :controller => "votes", :action => "edit"
  post "/update_vote/:id", :controller => "votes", :action => "update"

  # DELETE
  get "/delete_vote/:id", :controller => "votes", :action => "destroy"
  #------------------------------

  # Routes for the Drink resource:
  # CREATE
  get "/drinks/new", :controller => "drinks", :action => "new"
  post "/create_drink", :controller => "drinks", :action => "create"

  # READ
  get "/drinks", :controller => "drinks", :action => "index"
  get "/drinks/:id", :controller => "drinks", :action => "show"

  # UPDATE
  get "/drinks/:id/edit", :controller => "drinks", :action => "edit"
  post "/update_drink/:id", :controller => "drinks", :action => "update"

  # DELETE
  get "/delete_drink/:id", :controller => "drinks", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
