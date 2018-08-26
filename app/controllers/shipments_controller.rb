class ShipmentsController < ApplicationController
    def index 
        shipments = Shipment.all
    end 

    def show
        shipment = Shipment.find(params[:id])
    end 

    def create
        shipment = Shipment.new(shipment_params)
      
        if shipment.save
          render json: {status: 'Shipment created successfully'}, status: :created
        else
          render json: { errors: shipment.errors.full_messages }, status: :bad_request
        end
    end 
    
    def shipment_params
        params.require(:shipment).permit(:tntcode, :status, :shipment_type, :weight, :content, :price, :sender_id, :receiver_id)
    end
end
