require "./house.rb"

class EchoHouse < House
  def parts(number)
    super.zip(super).flatten
  end
end
