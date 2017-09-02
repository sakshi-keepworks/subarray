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
    return "Sum: #{max_so_far}"
  end
end
