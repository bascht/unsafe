require 'minitest/autorun'

require 'unsafe/unsafe'

# I've got to come up with a nice segfault
# test for the crashy bits of this lib.
CHANCE_OF_DOOM=0

class TestSafe < MiniTest::Unit::TestCase
  def test_that_this_wont_crash
    result = unsafe { sleep 3; true }
    assert_equal result, true
  end
end
