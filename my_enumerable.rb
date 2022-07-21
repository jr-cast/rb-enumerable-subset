module MyEnumerable
  def all?
    each { |expr| return false unless yield (expr) }
    true
  end

  def any?
    each { |expr| return true if yield (expr) }
    false
  end

  def filter 
    arr = []
    each { |expr| arr.push(expr) if yield(expr)}
    arr
  end
end