require 'test_helper'

class BeliefTest < ActiveSupport::TestCase
  test 'Is a Belief' do
    assert_kind_of Belief, beliefs(:one)
  end

  test 'Cannot save an incomplete Belief' do
    belief = Belief.new

    assert_not belief.save
  end
end
