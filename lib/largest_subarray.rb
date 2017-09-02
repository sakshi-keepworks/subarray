class ContiguousSubarray
  attr_accessor :raw_array

  def initialize
    @raw_array = Array.new
  end

  def largest_contiguous_subarray_sum
    max_ending_here = max_so_far = 0
    raw_array.flatten!
    return false unless raw_array.bsearch {|x| x > 0 }
    raw_array.each do |element|
      max_ending_here = [max_ending_here + element, 0].max
      max_so_far = [max_ending_here, max_so_far].max
    end
    puts "Sum: #{max_so_far}"
  end
end

csa = ContiguousSubarray.new
input = " "
while !input.empty?
  input = gets.chomp.split().map { |e| e.to_i }
  csa.raw_array.push input
end
csa.largest_contiguous_subarray_sum
