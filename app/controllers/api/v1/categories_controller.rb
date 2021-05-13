class Api::V1::CategoriesController < ApplicationController
    skip_before_action :authorized

    def index
        @categories = []
        current_user.events.each do |event|
            @categories << event.category
        end 

        render json: @categories.uniq
    end 
end