require 'rails_helper'

RSpec.describe Victim, :type => :model do
  it { is_expected.to validate_presence_of(:name) }
end
