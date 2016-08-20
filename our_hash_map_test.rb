gem 'byebug'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './our_hash_map'
require 'byebug'

class OurHashMapTest < Minitest::Test

  def setup
    @hash_map = OurHashMap.new
  end

  def test_it_has_a_container_for_entries
    assert_equal Array, @hash_map.buckets.class
  end

  def test_container_initiated_to_size
    assert_equal 11, @hash_map.hash_size
  end

  def test_buckets_accepts_entries
    assert_equal ['first_name', 'Margie'], @hash_map.put('first_name', 'Margie')
  end

  def test_buckets_returns_val_at_key
    @hash_map.put('first_name', 'Margie')

    assert_equal 'Margie', @hash_map.get('first_name')
  end

  def test_hash_size_grows_when_hash_almost_half_full
    @hash_map.put("key0", "value0")
    @hash_map.put("key1", "value1")
    @hash_map.put("key2", "value2")
    @hash_map.put("key3", "value3")
    @hash_map.put("key4", "value4")

    assert_equal 22, @hash_map.hash_size
  end
end
