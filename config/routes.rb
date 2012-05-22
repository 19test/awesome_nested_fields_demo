ContactsNestedFields::Application.routes.draw do
  #get '/person' => 'people#index'
  resources 'people'

  root :to => 'people#index'
end
