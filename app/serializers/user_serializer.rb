class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :firstname, :lastname, :fullname

    has_many :events
end 