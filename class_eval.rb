def add_method_to(a_class)
  a_class.class_eval do
    def m
      p 'hello'
    end
  end
end


class MyClass

end

add_method_to(MyClass)

m = MyClass.new

m.m