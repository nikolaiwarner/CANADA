ActionController::Routing::Routes.draw do |map|
  
  
  map.connect '/',      :controller => "pages", :action => "home"
  map.connect '/home',  :controller => "pages", :action => "home"
  map.connect '/new',   :controller => "pages", :action => "create"
  map.connect '/send_newsletter',   :controller => "pages", :action => "send_newsletter"

  
  map.resources :organizations
  map.resources :resources
  map.resources :hacks
  map.resources :announcements
  map.resources :locations
  map.resources :events

end
