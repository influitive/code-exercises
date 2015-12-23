require './poem.rb'

class EchoPoem < Poem
  def generate_poem
    previous_line = ""
    data.reverse.each do |line|
      puts "This is #{line} #{line} #{previous_line} #{previous_line}"
      previous_line = previous_line + ' ' + line
    end
  end
end
