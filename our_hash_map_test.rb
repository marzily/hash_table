gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './our_hash_map'

class OurHashMapTest < Minitest::Test

  def setup
    @hash_map = OurHashMap.new
  end

  def test_it_has_a_container_for_entries
    assert_equal Array, @hash_map.hash_arr.class
  end

  def test_container_initiated_to_size
    assert_equal 11, @hash_map.hash_size

  end

  def test_hash_arr_accepts_entries
    skip

  end


end
