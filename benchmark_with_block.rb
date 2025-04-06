def benchmark
  # Your benchmarking code goes here.w
  time_start = Time.now
  results_from_string = yield
  time_start - Time.now
  
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"