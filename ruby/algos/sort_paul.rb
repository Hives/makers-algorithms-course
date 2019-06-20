def sort(input)
  output = []
  i = 0
  while i < input.length
    j = 0
    while j <= output.length
      if j == output.length
        output << input[i]
        break
      end
      if output[j] > input[i]
        output.insert(j, input[i])
        break
      end
      j += 1
    end
    i += 1
  end

  output
end

if __FILE__ == $0
  require_relative '../lib/timing_stuffs'

  input_to_algo = Proc.new { |n| (1..n).to_a.reverse }
  algo = Proc.new { |input| sort(input) }

  timings = get_timings(max: 100_000,
                        iterations: 10,
                        input_to_algo: input_to_algo,
                        algo: algo)

  save_as_csv(timings)
end
