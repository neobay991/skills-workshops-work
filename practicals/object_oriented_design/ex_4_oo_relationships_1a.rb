class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def to(comparison)
    comparison.compare(@contents)
  end

  def print
    puts @contents
  end

end

class ScrambleByAdvancingChars
  def initialize(step)
    @step = step
    test = ScrambledDiary.new
  end
  def compare(contents)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @step).chr
    end
    @contents = scrambled_chars.join
    puts @contents
  end
end

class UnScrambleByAdvancingChars
  def initialize(step)
    @step = step
  end
  def compare(contents)
    scrambled_chars = contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @step).chr
    end
    @contents = plain_chars.join
    puts @contents
  end
end
