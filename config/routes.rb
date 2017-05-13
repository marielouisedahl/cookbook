Rails.application.routes.draw do
  get 'pages/info'

  root :to => redirect('/recipes')
  get    '/recipes'           => 'recipes#index'

  get    '/recipes/new'       => 'recipes#new', as: 'new_recipe'
  get    '/recipes/:id/edit'  => 'recipes#edit', as: 'edit_recipe'
  get    '/recipes/:id'       => 'recipes#show', as: 'recipe'

  post   '/recipes'           => 'recipes#create'
  patch  '/recipes/:id'       => 'recipes#update'
  put    '/recipes/:id'       => 'recipes#update'

  delete '/recipes/:id'       => 'recipes#destroy'

  get    '/ideas'           => 'ideas#index'

  get    '/ideas/new'       => 'ideas#new', as: 'new_idea'
  get    '/ideas/:id/edit'  => 'ideas#edit', as: 'edit_idea'
  get    '/ideas/:id'       => 'ideas#show', as: 'idea'

  post   '/ideas'           => 'ideas#create'
  patch  '/ideas/:id'       => 'ideas#update'
  put    '/ideas/:id'       => 'ideas#update'

  delete '/ideas/:id'       => 'ideas#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
