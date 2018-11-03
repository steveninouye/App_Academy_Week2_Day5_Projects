class MaxIntSet
  def initialize(max)
<<<<<<< HEAD
    @max = max
    @store = Array.new(max) {false}
  end

  def insert(num)
    raise "Out of bounds" unless is_valid?(num)
    @store[num] = true
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    @store[num]
=======
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
  end

  private

  def is_valid?(num)
<<<<<<< HEAD
    num.between?(0, @store.size-1)
  end
  #
  # def validate!(num)
  # end
=======
  end

  def validate!(num)
  end
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
<<<<<<< HEAD
    # idx = num % @store.length
    self[num] << num unless include?(num)
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
=======
  end

  def remove(num)
  end

  def include?(num)
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
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
<<<<<<< HEAD
    unless include?(num)
      resize! if @count == num_buckets
      @count += 1
      self[num] << num
    end
  end

  def remove(num)
    if include?(num)
      self[num].delete(num)
      @count -= 1
    end
  end

  def include?(num)
    self[num].include?(num)
=======
  end

  def remove(num)
  end

  def include?(num)
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
