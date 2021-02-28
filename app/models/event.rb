class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  scope :previous, -> { where('start_date > ?', Time.zone.today) }
  scope :future, -> { where('start_date < ?', Time.zone.today) }
end
