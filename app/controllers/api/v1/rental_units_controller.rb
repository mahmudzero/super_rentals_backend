class Api::V1::RentalUnitsController < ActionController::API
  def index
    rental_units = RentalUnit.all
    rental_units = rental_units.map do |rental_unit|
      {
        type: rental_unit.rental_type,
        id: rental_unit.rental_id,
        attributes: {
          title: rental_unit.title,
          owner: rental_unit.owner,
          city: rental_unit.city,
          location: {
            lat: rental_unit.lat,
            lng: rental_unit.lng
          }
        },
        category: rental_unit.category,
        bedrooms: rental_unit.bedrooms,
        image: rental_unit.image,
        description: rental_unit.description,
      }
    end

    render json: { results: rental_units }.to_json, status: :ok
  end
end


# {
#   type: rentalUnit.type,
#   rental_id: rentalUnit.rental_id,
#   attributes: {
#     title: rentalUnit.title,
#     owner: rentalUnit.owner,
#     city: rentalUnit.city,
#     location: {
#       lat: rentalUnit.lat,
#       lng: rentalUnit.lng
#     }
#   },
#   category: rentalUnit.category,
#   bedrooms: rentalUnits.bedrooms,
#   image: rentalUnit.image,
#   description: rentalUnit.description,
# }
