class Poem
  LINES = [ 'the horse and the hound and the horn that belonged to',
    'the farmer sowing his corn that kept',
    'the rooster that crowed in the morn that woke',
    'the priest all shaven and shorn that married',
    'the man all tattered and torn that kissed',
    'the maiden all forlorn that milked',
    'the cow with the crumpled horn that tossed',
    'the dog that worried',
    'the cat that killed',
    'the rat that ate',
    'the malt that lay in',
    'the house that Jack built' ]

  def recite
    lines.length.times do |i|
      puts 'This is ' + verse(i).join("\n"), ' '
    end
  end

  private

  def verse(i)
    LINES[-(i+1)..-1]
  end

  def lines
    @lines ||= LINES
  end
end

class DoublePoem < Poem
  def verse(i)
    super.map{|l| [l, l] }.flatten
  end
end

module Randomized
  def lines
    @lines ||= self.class.const_get(:LINES).shuffle
  end
end


class RandomPoem < Poem
  include Randomized
end



class RandomDoublePoem < DoublePoem
  include Randomized
end

RandomDoublePoem.new.recite
