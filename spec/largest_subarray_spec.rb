require 'spec_helper'

describe 'largest_subarray' do
  context 'calculate sum of max contiguous subarray' do
    it 'returns the sum' do
      csa = ContiguousSubarray.new
      csa.raw_array = [-2, 1, 3, -4, -3, 4, 2, -1, 5, 4]
      expect(csa.largest_contiguous_subarray_sum).to eq("Sum: 14")
    end

    it 'returns false with no positive integer' do
      csa = ContiguousSubarray.new
      csa.raw_array = [-2, -4, -3]
      expect(csa.largest_contiguous_subarray_sum).to eq(false)
    end

    it 'returns correct sum for different values' do
      csa = ContiguousSubarray.new
      csa.raw_array = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
      expect(csa.largest_contiguous_subarray_sum).to eq("Sum: 6")
    end
  end
end
