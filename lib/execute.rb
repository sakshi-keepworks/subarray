require './lib/max_contiguous_subarray'

csa = ContiguousSubarray.new
input = " "
while !input.empty?
  input = gets.chomp.split().map { |e| e.to_i }
  csa.raw_array.push input
end
csa.largest_contiguous_subarray_sum
