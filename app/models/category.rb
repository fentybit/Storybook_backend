class Category < ApplicationRecord
    has_many :users, through: :events
end