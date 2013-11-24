inc = Proc.new {|arg| arg + 1}     #Deferred evaluation

dec = lambda {|arg| arg - 1}

dec1 = lambda do |arg|
  x = arg * 100
  arg + x
end

def math(a, b)
  yield(a, b)
end

def teach_math(a, b, &operation)
  p 'Lets do the math:'
  p operation.call(-1,9)
  p yield(100,200)
  math(a,b, &operation)
end

p math(2,3){|x, y| x + y}

p teach_math(4,5){|x,y| x * y}

p inc.call(2)

p dec.call(5)

p dec1.call(1)

p dec1.class


def my_method(&the_proc)
  the_proc
end

m = my_method{|name| "Hello #{name}!"}

m.class
m.call('Bill')

def my_method1(greeting)
  "#{greeting} #{yield}"
end

my_proc = lambda { 'Bill'}

p my_method1('hello', &my_proc)