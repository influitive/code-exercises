require "./house.rb"

class RandomHouse < House
  def data
    @data ||= super.shuffle
  end
end

