class Fixnum
  # Fixnum#hash already implemented for you
<<<<<<< HEAD

=======
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
end

class Array
  def hash
<<<<<<< HEAD
    result = Integer(29.to_s(2))
    each_with_index do |el, i|
      result *= (el*i).hash
    end
    result
=======
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
  end
end

class String
  def hash
<<<<<<< HEAD
    result = Integer(29.to_s(2))
    chars.each_with_index do |ch, i|
      result *= (ch.ord*i).hash
    end
    result
=======
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
<<<<<<< HEAD
    result = Integer(29.to_s(2))
    each do |k, v|
      result *= (k.to_s.ord*v.ord).hash
    end
    result
  end


=======
    0
  end
>>>>>>> b6031a62a537f47e8f7c0139b8fa5e5280ba4662
end
