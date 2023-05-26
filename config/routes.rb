Rails.application.routes.draw do
  resources :animals

root "animalsIndex"
# # create
post '/animals' => 'animals#create'
# new
get '/animals/new' =>  'animals#new', as: 'animal_p'
# edit
get '/animals/:id/edit' => 'animals#edit'
# update
put '/animals/:id' => 'animals#update'
# destroy
delete ' /animals/:id' => 'animals#destroy'
end
