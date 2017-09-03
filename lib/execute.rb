require './lib/largest_subarray'

csa = ContiguousSubarray.new
input = " "
while !input.empty?
  input = gets.chomp.split().map { |e| e.to_i }
  csa.raw_array.push input
end
result = csa.largest_contiguous_subarray_sum
puts result
