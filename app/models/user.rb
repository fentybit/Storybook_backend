class User < ApplicationRecord
    has_many :categories, through: :events, dependent: :destroy
end