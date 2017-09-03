class ContiguousSubarray
  attr_accessor :raw_array, :length_of_subarray, :sum_of_subarray, :elements, :start_index_of_subarray

  def initialize
    @raw_array = Array.new
  end

  def largest_contiguous_subarray_sum
    max_ending_here = max_so_far = 0
    raw_array.flatten!
    return "Please enter integers with atleast one positive integer" unless raw_array.bsearch {|x| x > 0 }
    subarray = []
    count = 0
    intermediate_subarrays = Hash.new
    raw_array.each_with_index do |element, index|
      max_ending_here = max_ending_here + element
      if max_ending_here < 0
        max_ending_here = 0
        subarray = []
        count = index
      else
        subarray << element
        index == 0 ? intermediate_subarrays[index] = subarray : intermediate_subarrays[count + 1] = subarray
      end
      max_so_far = [max_ending_here, max_so_far].max
    end
    find_elements(intermediate_subarrays, max_so_far)
  end

  private

  def find_elements(intermediate_subarrays, largest_sum)
    intermediate_subarrays.each do |start_index,subarray|
      sum = 0
      final_subarray = []
      subarray.each do |element|
        sum = sum + element
        final_subarray << element
        if sum == largest_sum
          intermediate_subarrays[start_index] = final_subarray
          break
        end
      end
      intermediate_subarrays.delete(start_index) if sum != largest_sum
    end
    display_result(intermediate_subarrays, largest_sum)
  end

  def display_result(max_contiguous_subarrays, largest_sum)
    @start_index_of_subarray = max_contiguous_subarrays.keys.first
    @length_of_subarray = max_contiguous_subarrays.values.first.length
    @sum_of_subarray = largest_sum
    @elements = max_contiguous_subarrays.values.first
    result = "Start Index: #{start_index_of_subarray}
    \nLength: #{length_of_subarray}
    \nSum: #{sum_of_subarray}
    \nElements: #{elements}"
    return result
  end
end
