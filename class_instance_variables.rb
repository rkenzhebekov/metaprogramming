class MyClass
  @my_var = 1

  def self.read
    @my_var
  end

  def write
    @my_var = 2
  end

  def read
    @my_var
  end
end


m = MyClass.new
m.write
p m.read
p MyClass.read