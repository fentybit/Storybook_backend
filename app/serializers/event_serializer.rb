class EventSerializer < ActiveModel::Serializer
    attributes :title, :date, :time, :location, :vibe, :description

    belongs_to :category
    belongs_to :user
end 