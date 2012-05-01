FirstApp::Application.routes.draw do

  get "/choons", :controller => "jams", :action => "index"
  post "/choons", :controller => "jams", :action => "create"
  
  get "/choons/new", :controller => "jams", :action => "new"
  
  get "/choons/:name", :controller => "jams", :action => "show"
  put "/choons/:name", :controller => "jams", :action => "update"
  
  get "/choons/:name/edit", :controller => "jams", :action => "edit"
  
  delete "/choons/:name", :controller => "jams", :action => "destroy"

end
