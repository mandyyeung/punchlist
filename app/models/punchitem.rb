class Punchitem < ActiveRecord::Base
  belongs_to :subcontractor
  belongs_to :superintendent
  belongs_to :engineer
  belongs_to :location

  # accepts_nested_attributes_for :subcontractor
  # accepts_nested_attributes_for :superintendent
  # accepts_nested_attributes_for :engineer
  # accepts_nested_attributes_for :location
end
