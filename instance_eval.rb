class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new

obj.instance_eval do
  p self
  p @v
end

class C
  def initialize
    @x = 1
    @y = 2
  end
end

p C.new.instance_exec(3){|arg| @x + @y + arg}