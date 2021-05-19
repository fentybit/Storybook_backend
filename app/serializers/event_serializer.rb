class EventSerializer < ActiveModel::Serializer
    attributes :id, :title, :date, :time, :location, :latitude, :longitude, :vibe, :description

    belongs_to :category
    belongs_to :user
    has_many :images
end 