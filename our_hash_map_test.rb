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
    assert_equal ['first_name', 'Margie'], @hash_map.put('first_name', 'Margie')
  end

  def test_hash_arr_returns_val_at_key
    @hash_map.put('first_name', 'Margie')
    
    assert_equal 'Margie', @hash_map.get('first_name')
  end


end
