class OurHashMap
  attr_accessor :hash_arr, :hash_size

  def initialize
    @hash_arr = []
    @hash_size = 11
  end

  def put(key, value)
    i = key.hash % hash_size
    hash_arr[i] = [key, value]
  end

  # def get(key)
  #   i = @keys.index(key)
  #   @values[i.hash]
  # end
  #


end


# hash = OurHashMap.new
#
# hash.put("first_name", "Nick")
# puts "Nick" == hash.get("first_name")
