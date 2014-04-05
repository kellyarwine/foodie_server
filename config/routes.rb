Foodieapp::Application.routes.draw do
  resources :ingredients
  resources :recipes

  match '/recipe/:recipe_id', :to => 'FoodToFork#recipe'
  match '/recipe_search/:search_terms', :to => 'FoodToFork#recipe_search'
end
