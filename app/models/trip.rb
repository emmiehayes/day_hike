class Trip < ApplicationRecord
validates_presence_of :name

  has_many :trip_trails, dependent: :destroy
  has_many :trails, through: :trip_trails
end
