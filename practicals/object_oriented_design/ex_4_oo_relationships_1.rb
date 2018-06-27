# class ScrambledDiary
#   def initialize(contents)
#     @contents = contents
#   end
#
#   def read
#     @contents
#   end
#
#   def scramble_by_advancing_chars(steps)
#     plain_chars = @contents.chars
#     scrambled_chars = plain_chars.map do |char|
#       (char.ord + steps).chr
#     end
#     @contents = scrambled_chars.join
#   end
#
#   def unscramble_by_advancing_chars(steps)
#     scrambled_chars = @contents.chars
#     plain_chars = scrambled_chars.map do |char|
#       (char.ord - steps).chr
#     end
#     @contents = plain_chars.join
#   end
#
#   def scramble_by_reversing
#     @contents = @contents.reverse
#   end
#
#   def unscramble_by_reversing
#     @contents = @contents.reverse
#   end
# end


class Expect
  def initialize(value)
    @value = value
  end

  def to(comparison)
    if comparison.compare(@value)
      puts "Test passed"
    else
      puts "Test failed"
    end
  end
end

class Equal
  def initialize(value)
    @value = value
  end

  def compare(other)
    other == @value
  end
end

class Include
  def initialize(value)
    @value = value
  end

  def compare(array)
    array.include?(@value)
  end
end

class RespondTo
  def initialize(method_name)
    @method_name = method_name
  end

  def compare(other)
    other.respond_to? @method_name
  end
end

class Tests
  def run
    Expect.new(5).to(Equal.new(5))
    Expect.new([1,2,3]).to(Include.new(2))
    Expect.new("hello").to(RespondTo.new(:reverse))
  end
end
