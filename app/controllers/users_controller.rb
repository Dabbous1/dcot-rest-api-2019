class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
    end 

    def create
        user = User.new(user_params)
        if user.save 
          render json: {status: 'user created successfully'}, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :bad_request
        end
    end 
    
    def user_params
        params.require(:user).permit(:userid, :name, :email, :photoUrl, :streetname, :zipcode, :city, :country)
    end
end
