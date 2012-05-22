ContactsNestedFields::Application.routes.draw do
  #get '/person' => 'people#index'
  resources 'people'
end
