require './lib/linked_list'

class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(sound)
    sound.split(" ").each do |value|
      list.append(value)
    end
  end

  def count
    list.count
  end

  def play
    `say #{list.to_string}`
  end
end