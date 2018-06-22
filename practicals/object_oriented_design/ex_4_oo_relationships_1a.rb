class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  #replaced 'compare' method name with 'scramble'
  def to(comparison)
    comparison.scramble(@contents)
  end
end

class ScrambleByAdvancingChars
  def initialize(step)
    @step = step
  end
  def scramble(contents)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @step).chr
    end
    @contents = scrambled_chars.join
    puts "scrambled TEST to: #{@contents}"
  end
end

class UnScrambleByAdvancingChars
  def initialize(step)
    @step = step
  end
  def scramble(contents)
    scrambled_chars = contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @step).chr
    end
    @contents = plain_chars.join
    puts "Unscrambled WHVW to: #{@contents}"
  end
end

class ScrambleByReversing
  def initialize(step)
    @step = step
  end

  def scramble(contents)
    @contents = contents.reverse
    puts "Scrambled by reversing TEST to: #{@contents}"
  end
end

class UnScrambleByReversing
  def initialize(step)
    @step = step
  end

  def scramble(contents)
    @contents = contents.reverse
    puts "Unscrambled by reversing TSET to: #{@contents}"
  end
end

class Tests
  def run
    # scramble TEST = WHVW
    ScrambledDiary.new("TEST").to(ScrambleByAdvancingChars.new(3))
    # unscramble WHVW = TEST
    ScrambledDiary.new("WHVW").to(UnScrambleByAdvancingChars.new(3))
    # scramble TEST = TSET
    ScrambledDiary.new("TEST").to(ScrambleByReversing.new(2))
    # scramble TSET = TEST
    ScrambledDiary.new("TSET").to(UnScrambleByReversing.new(3))
  end
end
