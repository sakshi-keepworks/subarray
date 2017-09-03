require 'spec_helper'

describe 'max_contiguous_subarray' do
  context 'calculate sum of max contiguous subarray' do
    it 'returns the sum' do
      csa = ContiguousSubarray.new
      csa.raw_array = [-2, 1, 3, -4, -3, 4, 2, -1, 5, 4]
      csa.largest_contiguous_subarray_sum
      expect(csa.start_index_of_subarray).to eq(5)
      expect(csa.length_of_subarray).to eq(5)
      expect(csa.sum_of_subarray).to eq(14)
      expect(csa.elements).to eq([4, 2, -1, 5, 4])
    end

    it 'returns error with no positive integer' do
      csa = ContiguousSubarray.new
      csa.raw_array = [-2, -4, -3]
      expect(csa.largest_contiguous_subarray_sum).to eq("Please enter integers with atleast one positive integer")
    end

    it 'returns correct sum for different values' do
      csa = ContiguousSubarray.new
      csa.raw_array = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
      csa.largest_contiguous_subarray_sum
      expect(csa.start_index_of_subarray).to eq(3)
      expect(csa.length_of_subarray).to eq(4)
      expect(csa.sum_of_subarray).to eq(6)
      expect(csa.elements).to eq([4, -1, 2, 1])
    end

    it 'expects a value' do
      csa = ContiguousSubarray.new
      csa.raw_array = []
      expect(csa.largest_contiguous_subarray_sum).to eq("Please enter integers with atleast one positive integer")
    end

    it 'returns correct sum for more examples' do
      csa = ContiguousSubarray.new
      csa.raw_array = [3, -3, -4, 1, 5]
      csa.largest_contiguous_subarray_sum
      expect(csa.start_index_of_subarray).to eq(3)
      expect(csa.length_of_subarray).to eq(2)
      expect(csa.sum_of_subarray).to eq(6)
      expect(csa.elements).to eq([1, 5])
    end
  end
end
