class Hunt < ActiveRecord::Base
  belongs_to :victim, dependent: :destroy
  accepts_nested_attributes_for :victim
end
