Rails.application.routes.draw do
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
