class Event < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :images

  def time_strftime
    self.time.strftime("%I:%M%p") 
  end 
end