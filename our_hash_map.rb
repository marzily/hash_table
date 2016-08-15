
require 'byebug'

class OurHashMap
  attr_accessor :hash_arr, :hash_size

  def initialize
    @hash_arr = []
    @hash_size = 11
  end

  def put(key, value)
      if hash_arr.count != 0 && increase_size?

        expand_hash
        # increase_size of Array
        # reindex every item
        # add new item
      else
        # add new item
        i = index(key)
        hash_arr[i] = [key, value]
      end
  end

  def get(key)
    i = index(key)
    hash_arr[i].last
  end

  private

    def index(key)
      key.hash % hash_size
    end

    def increase_size?
      byebug
      hash_arr.compact.count % 5 == 0
    end

    def expand_hash
      self.hash_size += 11
    end
end


hash = OurHashMap.new

hash.put("first_name", "Nick")
puts "Nick" == hash.get("first_name")
