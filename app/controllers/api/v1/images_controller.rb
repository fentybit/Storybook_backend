class Api::V1::ImagesController < ApplicationController
    skip_before_action :authorized

    def index
        @images = []
        
        current_user.events.each do |event|
            if event.image != []
                @images << event.image
            end 
        end 

        render json: @images
    end 
end