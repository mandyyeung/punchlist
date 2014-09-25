class Location < ActiveRecord::Base
  has_many :punchitems

  def to_s
    "#{room_num} - #{room_name}"
  end
end
