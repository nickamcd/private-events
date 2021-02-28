class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :enrollments
  has_many :attendee, through: :enrollments, source: :user

  scope :previous, -> { where('start_date > ?', Time.zone.today) }
  scope :future, -> { where('start_date < ?', Time.zone.today) }
end
