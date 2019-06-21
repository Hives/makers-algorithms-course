def sort_0s_and_1s(input)
  output = [nil] * input.length
  i_left = 0
  i_right = input.length - 1

  input.each do |thing|
    if thing == 0
      output[i_left] = 0
      i_left += 1
    else
      output[i_right] = 1
      i_right -= 1
    end
  end

  output
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
