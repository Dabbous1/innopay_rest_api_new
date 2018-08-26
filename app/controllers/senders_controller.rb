class SendersController < ApplicationController
    
    def show
        sender = Sender.find(params[:id])
    end 

    def create
        sender = Sender.new(sender_params)
      
        if sender.save
          render json: {status: 'sender created successfully'}, status: :created
        else
          render json: { errors: sender.errors.full_messages }, status: :bad_request
        end
    end 
    
    def sender_params
        params.require(:sender).permit(:userid, :name, :email, :photourl, :address_id)
    end
  
end
