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
    LINES.length.times do |i|
      puts 'This is ' + lines(i).join("\n"), ' '
    end
  end


  def lines(verse)
    LINES[-(verse+1)..-1]
  end
end

class DoublePoem < Poem
  def lines(verse)
    super.map{|l| [l, l] }.flatten
  end
end

DoublePoem.new.recite
