class AddressesController < ApplicationController
    
    def show
        address = Address.find(params[:id])
    end 

    def create
        address = Address.new(address_params)
      
        if address.save
          render json: {status: 'address created successfully'}, status: :created
        else
          render json: { errors: address.errors.full_messages }, status: :bad_request
        end
    end 
    
    def address_params
        params.require(:address).permit(:streetname, :zipcode, :city, :country)
    end
  
end

