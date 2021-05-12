class EventSerializer < ActiveModel::Serializer
    attributes :id, :title, :date, :time, :location, :vibe, :description

    belongs_to :category
    belongs_to :user
end 