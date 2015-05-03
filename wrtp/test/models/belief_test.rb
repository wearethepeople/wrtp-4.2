require 'test_helper'

class BeliefTest < ActiveSupport::TestCase
  test 'Is a Belief' do
    assert_kind_of Belief, beliefs(:one)
  end

  test 'Cannot save an incomplete Belief' do
    belief = Belief.new

    assert_not belief.save
  end

  test 'Belongs to an Issue' do
    issue = issues(:one)
    belief = beliefs(:one)

    assert_equal issue, belief.issue
  end
end
