class Api::V1::EventsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index
        @events = current_user.events

        render json: @events
    end 

    def create 
        if params[:category] != ''
            @category = Category.find_or_create_by(name: params[:category])
        
            @event = Event.create(title: params[:title], vibe: params[:vibe], date: params[:date], time: params[:time], location: params[:location], latitude: params[:latitude], longitude: params[:longitude], description: params[:description], category_id: @category.id, user_id: current_user.id)

            if params[:image] != ''
                uploaded_image = Cloudinary::Uploader.upload(params[:image])

                @image = Image.create(url: uploaded_image['url'], event_id: @event.id)
            end 

            render json: { event: EventSerializer.new(@event), category: CategorySerializer.new(@category) }, status: :created  
        else 
            render json: { error: 'Failed to create Event.'}, status: :not_acceptable
        end 
    end 

    def show 
        @event = Event.find_by(id: params[:id])
        @category = @event.category

        if @event
            render json: { event: EventSerializer.new(@event), category: CategorySerializer.new(@category) }
        else
            render json: { error: 'Event not found.' }
        end 
    end 

    def update
        if params[:category] != ''
            @category = Category.find_or_create_by(name: params[:category])
            @event = Event.find_by(id: params[:id])

            @event.update(title: params[:title], vibe: params[:vibe], date: params[:date], time: params[:time], location: params[:location], latitude: params[:latitude], longitude: params[:longitude], description: params[:description], category_id: @category.id, user_id: current_user.id)

            @image = @event.image

            if params[:image] != '' && @image     
                uploaded_image = Cloudinary::Uploader.upload(params[:image])

                @image.update(url: uploaded_image['url'], event_id: @event.id)
            end 

            render json: { event: EventSerializer.new(@event), category: CategorySerializer.new(@category) }
        end 
    end 
end