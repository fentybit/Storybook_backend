class User < ApplicationRecord
    has_many :events
    has_many :categories, through: :events

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    def fullname
        self.firstname + ' ' + self.lastname
    end 
end