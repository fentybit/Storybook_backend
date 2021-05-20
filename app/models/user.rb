class User < ApplicationRecord
    has_many :events

    has_secure_password
    validates :username, uniqueness: true

    def fullname
        self.firstname + ' ' + self.lastname
    end 
end