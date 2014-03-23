module Accessor
  def my_attr_accessor(var_name)
    ivar = "@#{var_name}"
    define_method(var_name) do
      instance_variable_get(ivar)
    end

    define_method("#{var_name}=") do |val|
      instance_variable_set(ivar, val)
    end
  end
end

class Simple
  extend Accessor
  my_attr_accessor :name
end

s = Simple.new
s.name = 'Ruslan'
p s.name
