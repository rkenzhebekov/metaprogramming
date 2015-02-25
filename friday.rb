module CheckedAttributes
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    p self
    def attr_checked(attribute, &validation)
      p self
      define_method "#{attribute}=" do |value|
        raise 'Invalid attribute' unless validation.call(value)
        instance_variable_set("@#{attribute}", value)
      end

      define_method "#{atribute}" do
        instance_variable_get("@#{attribute}")
      end
    end
  end
end

class Person
  include CheckedAttributes

  attr_checked :age do |v|
    v >= 18
  end
end


person = Person.new

person.age = 31
person.age = 15


