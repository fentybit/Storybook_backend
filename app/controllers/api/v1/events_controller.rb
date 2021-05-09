class Api::V1::EventsController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def index
        render json: Event.all
    end 

    def create 
        if params[:category]
            @category = Category.create(name: params[:category])

            @event = Event.create(title: params[:title], vibe: params[:vibe], date: params[:date], time: params[:time], location: params[:location], description: params[:description], category_id: @category.id, user_id: current_user.id)

            render json: { event: EventSerializer.new(@event), category: @category }, status: :created
        else 
            render json: { error: 'Failed to create Event.'}, status: :not_acceptable
        end 
    end 
end