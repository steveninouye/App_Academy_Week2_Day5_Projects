require_relative 'p04_linked_list'

class HashMap
<<<<<<< HEAD
  include Enumerable

=======
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
  attr_accessor :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { LinkedList.new }
    @count = 0
  end

  def include?(key)
<<<<<<< HEAD
    bucket(key).include?(key)
  end

  def set(key, val)
    if include?(key)
      bucket(key).update(key, val)
    else
      resize! if @count == num_buckets
      bucket(key).append(key, val)
      @count += 1
    end
  end

  def get(key)
    bucket(key).get(key)
  end

  def delete(key)
    if include?(key)
      bucket(key).remove(key)
      @count -= 1
    end
  end

  def each(&prc)
    @store.each do |list|
      list.each do |node|
        prc.call(node.key,node.val)
      end
    end
=======
  end

  def set(key, val)
  end

  def get(key)
  end

  def delete(key)
  end

  def each
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
  end

  # uncomment when you have Enumerable included
  # def to_s
  #   pairs = inject([]) do |strs, (k, v)|
  #     strs << "#{k.to_s} => #{v.to_s}"
  #   end
  #   "{\n" + pairs.join(",\n") + "\n}"
  # end

  alias_method :[], :get
  alias_method :[]=, :set

  private

  def num_buckets
    @store.length
  end

  def resize!
<<<<<<< HEAD
    num_buck = num_buckets
    arr = @store
    @store = Array.new(num_buck * 2) { LinkedList.new }
    @count = 0
    arr.each do |list|
      list.each do |node|
        self.set(node.key,node.val)
      end
    end
  end

  def bucket(key)
    @store[key.hash % num_buckets]
=======
  end

  def bucket(key)
    # optional but useful; return the bucket corresponding to `key`
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
  end
end
