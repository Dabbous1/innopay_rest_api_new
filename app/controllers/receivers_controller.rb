class ReceiversController < ApplicationController
    def show
        receiver = receiver.find(params[:id])
    end 

    def create
        receiver = Receiver.new(receiver_params)
      
        if receiver.save
          render json: {status: 'receiver created successfully'}, status: :created
        else
          render json: { errors: receiver.errors.full_messages }, status: :bad_request
        end
    end 
    
    def receiver_params
        params.require(:receiver).permit(:name, :address_id)
    end
end
