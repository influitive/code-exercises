class JacksHouse
	DATA = ['the horse and the hound and the horn that belonged to',
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
  'the house that Jack built']

	def initialize(order: Order.new, format: Format.new)
		@data = order.set(DATA)
		@format = format
	end
	attr_reader :data, :format

	def line number
		data.last(number)
	end

	def output
		(1..data.length).each do |i|
			puts format.set line(i)
			puts '-----'
		end
	end
end

class Order
	def set data
		data
	end
end

class RandomOrder
	def set data
		data.shuffle
	end
end

class Format
	def set line
		line
	end
end

class EchoFormat
	def set line
		line.map do |l|
			"#{l} #{l}"
		end
	end
end