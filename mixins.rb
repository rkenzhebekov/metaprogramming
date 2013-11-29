module MyMixin
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def x
      'X'
    end
  end
end

class MyClass
  include MyMixin
end

p MyClass.x

