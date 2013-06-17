require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require '../lib/takeaway'

def setup
  @takeaway = Takeaway.new
  @order
end

def test "customers should be able to order one item"
  order1 = Pie_and_chips
  assert_equal 8, @takeaway.total
end

def test "customers can order more than one item"
  order2 = Pie_and_chips + Steak_and_chips
  assert_equal 8 + 9, @takeaway.total
end