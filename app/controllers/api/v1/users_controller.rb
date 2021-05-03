class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all
        render json: UserSerializer.new(users)
    end

    def create
        user = User.create(user_params)

        if user.save
            render json: UserSerializer.new(user), status: :accepted
        else 
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end 
    end 

    def show 
        user = User.find_by(id: params[:id])

        if user
            render json: UserSerializer.new(user)
        else 
            render json: { message: 'User not found.' }
        end 
    end 

    def update 
        user = User.find_by(id: params[:id])
        user.update(user_params)

        if user.save
            render json: user 
        else 
            render json: { message: 'User not saved.'}
        end 
    end 

    private

        def user_params
            params.require(:user).permit(:username, :email, :password_digest, :firstname, :lastname)
        end 
end