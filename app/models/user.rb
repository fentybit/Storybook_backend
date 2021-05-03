class User < ApplicationRecord
    has_many :events
    has_many :categories, through: :events

    def fullname
        self.firstname + ' ' + self.lastname
    end 
end