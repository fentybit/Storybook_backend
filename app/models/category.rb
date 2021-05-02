class Category < ApplicationRecord
    has_many :users, through: :events, dependent: :destroy
end