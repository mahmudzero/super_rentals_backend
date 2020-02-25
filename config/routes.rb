Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/rental_units', to: 'rental_units#index'
      get '/rental_units/:id', to: 'rental_units#get_by_id'
      post '/rental_units', to: 'rental_units#add_rental_unit'
      put '/rental_units/:id', to: 'rental_units#update_rental_unit'
    end
  end

end
