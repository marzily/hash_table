require 'byebug'

class OurHashMap
  attr_accessor :buckets, :hash_size

  def initialize
    @buckets = []
    @hash_size = 11
  end

  def put(key, value)
    if threshold?
      increase_size
      rehash
    elsif shrink?
      decrease_size
      rehash
    end

    insert(key, value)
  end

  def get(key)
    i = index(key)
    buckets[i].last
  end

  private

    def index(key)
      key.hash % hash_size
    end

# checks if num of buckets about half full
    def threshold?
      hash_size / 2 == buckets.compact.count / 2
    end

# grow size of buckets after meeting size threshold
    def increase_size
      hash_size *= 2
    end

# insert new key, val into buckets
    def insert(key, value)
      i = index(key)
      buckets[i] = [key, value]
    end

# rehash all key, val pairs after increasing hash_size
    def rehash
      buckets.compact.each do |key, value|
        insert(key, value)
      end
    end

# checks if need to shrink hash_size
    def shrink?
      hash_size / 4 == buckets.compact.count / 4
    end

# shrinks hash_size
    def decrease_size
      hash_size /= 2
    end

end


hash = OurHashMap.new

hash.put("first_name", "Nick")
puts "Nick" == hash.get("first_name")
