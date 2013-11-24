def a_method(a, b)
  a + yield(a, b)
end

def b_method
  return yield if block_given?
  'no'
end

module Kernel
  def using(resource)
    begin
      yield
    ensure
      resource.dispose
    end
  end
end

my_var = 'Success'
#class MyClass
#
#  def my_method
#
#  end
#end

MyClass = Class.new do
  p "#{my_var} in the class definition"

  define_method :my_method do
    p "#{my_var} in the my_method"
  end
end

def shared_methods
  shared = 0

  Kernel.send :define_method, :counter do
    shared
  end

  Kernel.send :define_method, :inc do |x|
    shared += x
  end
end


p shared_methods
p counter
p inc(1)


m = MyClass.new
m.my_method


p a_method(1,2) {|x, y| x + y * x}

a_method(1,1) do |x, y|
  x += 1
  y += 2
  x + y
end

p b_method

p b_method {'hi'}

x = 1
p local_variables



