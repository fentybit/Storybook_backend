class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized

    def index
        @images = []
        
        current_user.events.each do |event|
            if event.images != []
                @images << event.images
            end 
        end 

        render json: @images
    end 
end
