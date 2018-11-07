Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:new, :create]
  end
end


# get 'restaurants', to: 'restaurants#index'


#   get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant

#   post 'restaurants', to: 'restaurants#create'


#   get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant

#   patch 'restaurants/:id', to: 'restaurants#update'


#   delete 'restaurants/:id', to: 'restaurants#destroy'

#   get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
# Rails.application.routes.draw do
#   get "restaurants/:restaurant_id/reviews", to: "reviews#index"
# end

# Rails.application.routes.draw do
#   get "restaurants/:id", to: "restaurants#show"
# end
