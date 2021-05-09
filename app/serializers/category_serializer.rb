class CategorySerializer < ActiveModel::Serializer
    attributes :name
    
    has_many :events
    has_many :users, through: :events
end 