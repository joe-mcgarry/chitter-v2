require "test_helper"

class PeepTest < ActiveSupport::TestCase
  test "should not save article without body" do
    peep = Peep.new
    assert_not peep.save, "You failed"
  end
end


