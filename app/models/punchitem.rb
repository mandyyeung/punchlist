class Punchitem < ActiveRecord::Base
  belongs_to :subcontractor
  belongs_to :superintendent
  belongs_to :engineer
  belongs_to :location
end
