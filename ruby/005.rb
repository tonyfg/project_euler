#Q: What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
#A: 232792560

40.step(Float::INFINITY, 20) do |i|
  break i if (11..20).map { |j| i % j == 0 }.reduce(:&)
end
