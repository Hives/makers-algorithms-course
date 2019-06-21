def sort_0s_and_1s(array)
  i_left = 0
  i_right = array.length - 1

  loop do
    until array[i_left] == 1 || i_left == i_right
      i_left += 1
    end
    until array[i_right] == 0 || i_left == i_right
      i_right -= 1
    end
    break if i_left == i_right
    array.swap!(i_left, i_right)
  end

  array
end

class Array
  def swap!(i, j)
    self[i], self[j] = self[j], self[i]
    self
  end
end

if __FILE__ == $0
  require_relative '../lib/timing_stuffs'

  input_to_algo = Proc.new { |n| (([0] * (n/2)) + ([1] * (n/2))).shuffle }
  algo = Proc.new { |input| sort_0s_and_1s(input) }

  timings = get_timings(max: 10_000,
                        iterations: 1000,
                        input_to_algo: input_to_algo,
                        algo: algo)

  save_as_csv(timings)
end
