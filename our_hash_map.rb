class OurHashMap
  attr_reader :hash_arr, :hash_size

  def initialize
    @hash_arr = []
    @hash_size = 11
  end

  # def get(key)
  #   i = @keys.index(key)
  #   @values[i.hash]
  # end
  #
  # def put(key, value)
  #   @values[key.hash % @values.size] = value
  #
  # end

end


# hash = OurHashMap.new
#
# hash.put("first_name", "Nick")
# puts "Nick" == hash.get("first_name")