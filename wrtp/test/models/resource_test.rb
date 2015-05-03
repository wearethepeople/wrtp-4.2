require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  test 'Is a Resource' do
    assert_kind_of Resource, resources(:one)
  end

  test 'Cannot save an incomplete Resource' do
    resource = Resource.new

    assert_not resource.save
  end
end
