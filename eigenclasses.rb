module MyModule
  def my_method
    p 'hello'
  end
end


class MyClass
  #extend MyModule
  class << self
    include MyModule
  end
end


MyClass.my_method

