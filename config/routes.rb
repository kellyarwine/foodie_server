Foodieapp::Application.routes.draw do
  resources :ingredients
  resources :recipes

  match '/recipe/:recipe_id', :to => 'FoodToFork#recipe'
  match '/search/:search_terms', :to => 'FoodToFork#search'
end
