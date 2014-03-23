def count_with_increment(start, inc)
  start -= inc
  lambda { start += inc }
end

counter = count_with_increment(10,2)

p counter.call
p counter.call
p counter.call

