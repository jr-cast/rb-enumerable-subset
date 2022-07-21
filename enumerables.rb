require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*values)
    @list = values
  end

  def display_list()
    print @list
  end

  def each(&block)
    @list.each(&block)
  end
end
