class Event < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :images, dependent: :destroy
end