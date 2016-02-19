class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    "#{quantity(number).capitalize} #{noun(number)} of beer on the wall, " <<
    "#{quantity(number)} #{noun(number)} of beer.\n" <<
    "#{action(number)}, " <<
    "#{quantity(remaining(number))} #{noun(number - 1)} of beer on the wall.\n"
  end

  def action(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def remaining(number)
    if number <= 0
      99
    else
      number - 1
    end
  end

  def quantity(number)
    if number <= 0
      "no more"
    else
      number.to_s
    end
  end

  def noun(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end
end
