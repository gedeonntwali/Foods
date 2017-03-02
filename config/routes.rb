Rails.application.routes.draw do
  namespace :api do 
    namespace :v2 do
      get "/foods", to: 'foods#index'
      get "/foods/:id", to: 'foods#show'
      get "/foods/new", to: 'foods#new'
      post "/foods/", to: 'foods#create' 
      patch "/foods/:id", to: 'foods#update'
      delete "/foods/:id", to: 'foods#destroy' 
    end
  end

  get "/pages", to: 'pages#index'
  post "/pages", to: 'pages#create'

end