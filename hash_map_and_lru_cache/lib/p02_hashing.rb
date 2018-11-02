class Fixnum
  # Fixnum#hash already implemented for you

end

class Array
  def hash
    result = Integer(29.to_s(2))
    each_with_index do |el, i|
      result *= (el*i).hash
    end
    result
  end
end

class String
  def hash
    result = Integer(29.to_s(2))
    chars.each_with_index do |ch, i|
      result *= (ch.ord*i).hash
    end
    result
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    result = Integer(29.to_s(2))
    each do |k, v|
      result *= (k.to_s.ord*v.ord).hash
    end
    result
  end


end
