class User < ApplicationRecord
    has_many :categories, through: :events
end