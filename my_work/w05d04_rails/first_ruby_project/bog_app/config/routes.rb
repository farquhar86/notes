Rails.application.routes.draw do
    root to: 'creatures#index' # same as `get "/" => "creatures#index"`
    get '/creatures', to: 'creatures#index', as: 'creatures' # same as `get "/creatures" => "creatures#index"`
    get '/creatures/new', to: 'creatures#new', as: "new_creature"
    get '/creatures/:id', to: 'creatures#show', as: "creature"
    get '/creatures/:id/edit', to: 'creatures#edit', as: "edit_creature"  
    post '/creatures', to: 'creatures#create'
    # The update route
    patch "/creatures/:id", to: "creatures#update"
    # the destroy route
    delete "/creatures/:id", to: "creatures#destroy"
end
