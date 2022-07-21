require_relative './my_enumerable.rb'

class MyList
  include MyEnumerable
  
  def initialize(*values)
    @list = values
  end

  def displayList()
    print @list
  end

  def each(&block)
    @list.each(&block)
  end
end
