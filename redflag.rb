def event(description, &block)
  @events << {:description => description, :condition => block}
end

def setup(&block)
  @setups << block
end

@events = []
@setups = []

#Dir.glob('*events.rb' ).each {|file| load file }
load 'events.rb'

@events.each do |event|
  @setups.each do |setup|
    setup.call
  end

  p "ALERT: #{event[:description]}" if event[:condition].call
end