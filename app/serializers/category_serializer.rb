class CategorySerializer < ActiveModel::Serializer
    attributes :id, :name
    
    has_many :events
    has_many :users, through: :events
end 