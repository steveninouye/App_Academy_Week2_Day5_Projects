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
    each {|node| return node.val if node.key == key}
    nil
  end

  def include?(key)
    each {|node| return true if node.key == key }
    false
  end

  def append(key, val)
    new_node = Node.new(key, val)
    old_last = last
    new_node.prev, new_node.next = old_last, @tail
    @tail.prev, old_last.next = new_node, new_node
  end

  def update(key, val)
    each {|node| node.val = val if node.key == key}
  end

  def remove(key)
    each { |node| node.remove if node.key == key }
  end

  def each(&prc)
    node = @head.next
    until node == @tail
      next_node = node.next
      prc.call(node)
      node = next_node
    end
  end

  # uncomment when you have `each` working and `Enumerable` included
  def to_s
    inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  end
end
