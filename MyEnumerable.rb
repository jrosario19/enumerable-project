
module MyEnumerable

    def _all
      each { |x| return false unless yield(x) }
      true
    end
  
    def _any
      each { |x| return true if yield(x) }
      false
    end
  
    def _filter
      result = []
      each { |x| result << x if yield(x) }
      result
    end
    
  end