class EventsController < ApplicationController
    def index
        @events = Event.all
        render json: @events
    end 

    def create 
        @event = Event.create(event_params)

        if params[:category]
            @category = @event.create_category(name: params[:category])
            render json: { event: EventSerializer.new(@event), category: @category }, status: :created
        else 
            render json: { error: 'Failed to create Event.'}, status: :not_acceptable
        end 
    end 

    private

        def event_params
            params.require(:event).permit(:title, :date, :time, :location, :vibe, :description)
        end 
end