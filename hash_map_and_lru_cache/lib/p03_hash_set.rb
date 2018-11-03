class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
<<<<<<< HEAD
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
=======
  end

  def include?(key)
  end

  def remove(key)
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
  end

  private

  def [](num)
<<<<<<< HEAD
    @store[num % num_buckets]
=======
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
<<<<<<< HEAD
    num_buck = num_buckets
    arr = @store
    @store = Array.new(num_buck * 2) { Array.new }
    @count = 0
    arr.each do |bucket|
      bucket.each do |el|
        self.insert(el)
      end
    end
=======
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
  end
end
