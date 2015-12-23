require "./house.rb"

class RandomEchoHouse < House
  def data
    @data ||= super.shuffle
  end

  def parts(number)
    super.zip(super).flatten
  end
end