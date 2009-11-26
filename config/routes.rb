ActionController::Routing::Routes.draw do |map|
  
  map.resources :organizations
  map.resources :resources
  map.resources :hacks
  map.resources :announcements
  map.resources :locations
  map.resources :events

end
