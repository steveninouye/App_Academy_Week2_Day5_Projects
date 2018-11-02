class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    unless include?(key)
      resize! if @count == num_buckets
      @count += 1
      self[key.hash] << key
    end
  end

  def include?(key)
    self[key.hash].include?(key)
  end

  def remove(key)
    if include?(key)
      self[key.hash].delete(key)
      @count -= 1
    end
  end

  private

  def [](num)
    @store[num % num_buckets]
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    num_buck = num_buckets
    arr = @store
    @store = Array.new(num_buck * 2) { Array.new }
    @count = 0
    arr.each do |bucket|
      bucket.each do |el|
        self.insert(el)
      end
    end
  end
end
