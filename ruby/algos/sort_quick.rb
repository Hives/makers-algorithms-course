def sort(input)
  input.shuffle!
  quick_sort(input, 0, input.length - 1)
  input
end

def quick_sort(input, low, high)
  if low < high
    i_pivot = partition(input, low, high)
    quick_sort(input, low, i_pivot - 1)
    quick_sort(input, i_pivot + 1, high)
  end
end

def partition(input, low, high)
  pivot = input[high]
  i = low
  (low .. high - 1).each do |j|
    if input[j] < pivot
      swap(input, i, j)
      i += 1
    end
  end
  swap(input, i, high)
  i
end

def swap(input, i, j)
  tmp = input[i]
  input[i] = input[j]
  input[j] = tmp
end

if __FILE__ == $0
  require_relative '../lib/timing_stuffs'

  input_to_algo = Proc.new { |n| (1..n).to_a }
  algo = Proc.new do |input|
    sort(input)
  end

  timings = get_timings(max: 10_000,
                        iterations: 100,
                        input_to_algo: input_to_algo,
                        algo: algo)

  save_as_csv(timings)
end
