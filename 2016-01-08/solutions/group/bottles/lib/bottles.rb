class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    case number
      when 0
        "No more #{pluralize(number)} of beer on the wall, #{no_more(number + 1)} #{pluralize(number)} of beer.\nGo to the store and buy some more, #{no_more(number)} #{pluralize(number - 1)} of beer on the wall.\n"
      else
        "#{number} #{pluralize(number)} of beer on the wall, #{no_more(number + 1)} #{pluralize(number)} of beer.\nTake #{it_or_one(number)} down and pass it around, #{no_more(number)} #{pluralize(number - 1)} of beer on the wall.\n"
    end
  end

  def no_more(number)
    if number == 0
      99
    elsif number == 1
      "no more"
    else
      number - 1
    end
  end

  def new_no_more(number)
    if number == 0
      "No more"
    else
      number
    end
  end

  def pluralize(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def it_or_one(number)
    if number == 1
      "it"
    else
      "one"
    end
  end
end
