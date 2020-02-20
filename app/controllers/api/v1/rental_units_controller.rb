class Api::V1::RentalUnitsController < ActionController::API
  def index
    render jsonapi: RentalUnit.all
  end
end

class SerializableRentalUnit < JSONAPI::Serializable::Resource
  type 'rental_unit'

  attributes :rental_type, :rental_id, :category, :bedrooms, :image, :description

  attribute :innerattributes do
    {
      tite: @object.title,
      owner: @object.owner,
      city: @object.city,
      location: {
        lat: @object.lat,
        lng: @object.lng
      }
    }
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
