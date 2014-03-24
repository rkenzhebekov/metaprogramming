class Struct 
  @children = []

  def self.inherited(children)
    @children << children 
  end

  def self.children
    @children
  end
end

Dave = Struct.new(:name)
Fred = Struct.new(:age)


p Struct.children
