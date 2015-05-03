require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  test 'Is a Issue' do
    assert_kind_of Issue, issues(:one)
  end

  test 'Cannot save an incomplete Issue' do
    issue = Issue.new

    assert_not issue.save
  end
end
