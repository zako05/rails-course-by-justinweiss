require 'test_helper'

class BugTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "seeing if errors is overriden when valid? is called twice with different context" do
    bug = Bug.new
    bug.valid?(:publish)
    binding.pry
    puts
    puts "--After calling valid?(:publish)"
    puts bug.errors.full_messages
    bug.valid?
    puts "--After calling valid? again"
    puts bug.errors.full_messages
  end
end
