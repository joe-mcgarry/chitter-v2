require "test_helper"

class PeepTest < ActiveSupport::TestCase
  test "should not save peep without body" do
    peep = Peep.new
    assert_not peep.save, "You failed"
  end

  test "peep body is saved" do
    # peep = Peep.new(user: "Joe", date: Date.new(2022,8,17), body: "Sophie is the best")
    # peep.save
    assert_equal "Sophie is the best", peeps(:two).body
  end

end