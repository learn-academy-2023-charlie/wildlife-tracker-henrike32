Rails.application.routes.draw do
  resources :sightings
  resources :animals

## ANIMALS ##

root to: "animals#index"
# index
get '/animals' => 'animals#index'
# create
post '/animals' => 'animals#create'
# new
get '/animals/new' => 'animals#new'
# edit
get '/animals/:id/edit' => 'animals#edit'
# update
put '/animals/:id' => 'animals#update'
# destroy
delete '/animals/:id' => 'animals#destroy'

##  SIGHTINGS  ##
# Root
get  "sighting#index"
# index
get '/sightings' => 'sightings#index'
# create
post '/sightings' => 'sightings#create'
# new
get '/sightings/new' => 'sightings#new'
# edit
get '/sightings/:id/edit' => 'sightings#edit'
# update
put '/sightings/:id' => 'sightings#update'
# destroy
delete '/sightings/:id' => 'sightings#destroy'
end
