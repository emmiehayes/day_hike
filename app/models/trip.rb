class Trip < ApplicationRecord
validates_presence_of :name

has_many :trip_trails, dependent: :destroy
has_many :trails, through: :trip_trails

  def total_length
    trails.sum(:length)
  end

  def average_length
  trails.average(:length)
  end


  def shortest_length
  trails.minimum(:length)
  end


  def longest_length
    trails.maximum(:length)
  end
end
