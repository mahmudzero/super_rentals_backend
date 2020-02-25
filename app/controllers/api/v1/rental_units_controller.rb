class Api::V1::RentalUnitsController < ActionController::API
  def index
    render jsonapi: RentalUnit.all
  end

  def get_by_id
    to_update_id = params[:id]
    if (to_update_id != to_update_id.to_i.to_s)
      res = {
        data: [
          id: 1,
          type: 'error message',
          attributes: {
            error_message: 'error, ivalid id, must be integer'
          }
        ], jsonapi: {
          version: '1.0'
        }
      }
      render json: res, status: :bad_request
      return
    end
    render jsonapi: RentalUnit.find_by(id: params[:id])
  end

  def update_rental_unit
    p "#{params[:id]}"
    to_update_id = params[:id]
    if (to_update_id != to_update_id.to_i.to_s)
      res = {
        data: [
          id: 1,
          type: 'error message',
          attributes: {
            error_message: 'error, invalid id, must be integer'
          }
        ], jsonapi: {
          version: '1.0'
        }
      }
      render json: res, status: :bad_request
      return
    end

    res = {
      data: [
        id: 1,
        type: 'response message',
        attributes: {
          message: 'put received'
        }
      ], jsonapi: {
      version: '1.0'
      }
    }

    render json: res
  end

  def add_rental_unit

    reqBody = JSON.parse(request.body.read)

    newRentalUnit = RentalUnit.new(
      bedrooms: reqBody['Bedrooms'].to_i,
      rental_type: reqBody['Rental Type'].to_s,
      rental_id: reqBody['Rental ID'].to_s,
      owner: reqBody['Owner'].to_s,
      city: reqBody['City'].to_s,
      category: reqBody['Category'].to_s,
      image: reqBody['Image URL'].to_s,
      description: reqBody['Description'].to_s,
      lat: reqBody['Latitude'].to_i,
      lng: reqBody['Longitude'].to_i,
      title: reqBody['Posting Title'].to_s
    )

    newRentalUnit.save

    res = {
      data: [
        id: 1,
        type: 'response message',
        attributes: {
          message: 'post received'
        }
      ], jsonapi: {
      version: '1.0'
      }
    }
    render json: res
  end

end

class SerializableRentalUnit < JSONAPI::Serializable::Resource
  type 'rental_unit'

  attributes :rental_type, :rental_id, :category, :bedrooms, :image, :description

  attribute :innerattributes do
    {
      title: @object.title,
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
