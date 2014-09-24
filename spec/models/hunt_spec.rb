require 'rails_helper'

RSpec.describe Hunt, :type => :model do
  it { is_expected.to belong_to(:victim) }
end
