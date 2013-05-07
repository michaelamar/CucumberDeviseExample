require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "display name" do
    @user = User.new(:first_name => "Dan", :last_name => "Garland")
    assert_equal "Dan Garland", @user.display_name
  end
end
