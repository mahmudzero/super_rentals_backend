Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/rental_units', to: 'rental_units#index'
      post '/rental_units', to: 'rental_units#add_rental_unit'
    end
  end

end
