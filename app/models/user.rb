class User < ApplicationRecord
    has_many :events
    has_many :categories, through: :events

    has_secure_password
    validates :username, uniqueness: true
    # if you add validation, you do double check

    def fullname
        self.firstname + ' ' + self.lastname
    end 
end