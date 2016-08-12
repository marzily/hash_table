gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './hash_table'

class OurHashMapTest < Minitest::Test

  def setup
    hash_table = OurHashMap.new
  end


end
