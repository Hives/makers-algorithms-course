def merge_sort(input)
  return input if input.length < 2

  split_point = input.length / 2

  left = input[0, split_point]
  right = input[split_point, input.length - split_point]

  left_sorted = merge_sort(left)
  right_sorted = merge_sort(right)

  merge(left_sorted, right_sorted)
end

def merge(left, right)
  output = []
  left_i = 0
  right_i = 0

  until left_i == left.length || right_i == right.length
    if left[left_i] <= right[right_i]
      output << left[left_i]
      left_i += 1
    else
      output << right[right_i]
      right_i += 1
    end
  end

  while left_i < left.length
    output << left[left_i]
    left_i += 1
  end

  while right_i < right.length
    output << right[right_i]
    right_i += 1
  end

  output
end

if __FILE__ == $0
  require_relative '../lib/timing_stuffs'

  input_to_algo = Proc.new { |n| (1..n).to_a.reverse }
  algo = Proc.new { |input| merge_sort(input) }

  timings = get_timings(max: 500,
                        iterations: 1000,
                        input_to_algo: input_to_algo,
                        algo: algo)

  save_as_csv(timings)
end
