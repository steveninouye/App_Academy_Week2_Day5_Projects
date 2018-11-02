require "byebug"


class Node
  attr_reader :key
  attr_accessor :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
    p = @prev
    n = @next
    n.prev = p
    p.next = n
    @next, @prev = nil, nil
  end
end

class LinkedList
  include Enumerable

  def initialize
    @head = Node.new
    @tail = Node.new
    @head.next = @tail   # oldest
    @tail.prev = @head   # newest
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  # oldest
  def first
    @head.next
  end

  # newest
  def last
    @tail.prev
  end

  def empty?
    @head.next == @tail
  end

  def get(key)
    return nil if empty?
    node = @tail.prev
    node = node.prev until node.key == key || !node.prev
    node.prev ? node.val : nil
  end

  def include?(key)
    each {|node| return true if node.key == key }
    false
  end

  def append(key, val)
    new_node = Node.new(key, val)
    old_last = last
    new_node.prev, new_node.next = old_last, @tail
    @tail.prev = new_node
    old_last.next = new_node
  end

  def update(key, val)
    return if empty?
    node = first
    node = node.next until node.key == key
    node.val = val
  end

  def remove(key)
    return if empty?
    node = first
    node = node.next until node.key == key || !node.next
    node.remove if node.next
  end

  def each(&prc)
    return if empty?
    node = @head.next
    until node.next.nil?
      prc.call(node)
      node = node.next
    end
  end

  # uncomment when you have `each` working and `Enumerable` included
  def to_s
    inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  end
end
