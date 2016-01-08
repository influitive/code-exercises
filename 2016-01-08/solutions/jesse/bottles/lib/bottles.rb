class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def itOrOne number
    number == 1 ? 'it' : 'one'
  end
  
  def format number, capital=false
    if number == 0 
      capital ? 'No more' : 'no more'
    elsif number < 0
      99
    else
      number
    end
  end

  def pluralize_bottle(n)
    n == 1 ? 'bottle' : 'bottles'
  end

  def verse_three number
    number > 0 ? "Take #{itOrOne(number)} down and pass it around, " : "Go to the store and buy some more, "
  end

  def verse(number)
    "#{format(number, true)} #{pluralize_bottle(number)} of beer on the wall, #{format(number)} #{pluralize_bottle(number)} of beer.\n#{verse_three(number)}#{format(number - 1)} #{pluralize_bottle(number - 1)} of beer on the wall.\n"
  end

end
