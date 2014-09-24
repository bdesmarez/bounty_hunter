class Victim < ActiveRecord::Base
  has_many :hunts

  validates :name, presence: true

end
