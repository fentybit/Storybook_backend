class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index 
        @users = User.all
        render json: @users
    end

    def create
        @user = User.create(user_params)

        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else 
            render json: { error: 'Failed to create user.' }, status: :not_acceptable
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
            params.require(:user).permit(:username, :password, :firstname, :lastname)
        end 
end