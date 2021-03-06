#event "we're earning wads of money" do
#  recent_orders = 1001
#  recent_orders > 1000
#end

#event "an event that always happens" do
#  true
#end

#event "an event that never happens" do
#  false
#end

setup do
  puts "Setting up sky"
  @sky_height = 100
end

setup do
  puts "Setting up mountains"
  @mountains_height = 200
end

event "the sky is falling" do
  @sky_height < 300
end

event "it's getting closer" do
  @sky_height < @mountains_height
end

event "whoops... too late" do
  @sky_height < 0
end