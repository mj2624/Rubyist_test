class Array

  def inject(array)
    a.inject(3) do |sum, value|sum + value
  end
    yield(@inject) 
  end
end

  def reduce(array)
    a.reduce(3) do |sum, value|sum + value
  end
    yield(@reduce) 
  end
end


    