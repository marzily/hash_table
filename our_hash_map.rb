class OurHashMap
  attr_accessor :hash_arr, :hash_size

  def initialize
    @hash_arr = []
    @hash_size = 11
  end

  def put(key, value)
    i = index(key)
    hash_arr[i] = [key, value]
  end

  def get(key)
    i = index(key)
    hash_arr.each do |k, v|
      if k == key
        return v
      end
    end
    nil
  end

  def index(key)
    key.hash % hash_size
  end
end


hash = OurHashMap.new

hash.put("first_name", "Nick")
puts "Nick" == hash.get("first_name")
