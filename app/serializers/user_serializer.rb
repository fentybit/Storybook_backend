class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :firstname, :lastname, :fullname
end 