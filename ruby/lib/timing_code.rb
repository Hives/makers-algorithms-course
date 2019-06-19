# copy and paste this at the bottom of the algorithm file
# update input_to_algo to return a worst-case input for the algorithm
# update algo with the name of the algorithm method

if __FILE__ == $0
  require_relative '../lib/timing_stuffs'

  input_to_algo = Proc.new { |n| n }
  algo = Proc.new { |input| fibonacci(input) }

  timings = get_timings(max: 100_000,
                        iterations: 10,
                        input_to_algo: input_to_algo,
                        algo: algo)

  save_as_csv(timings)
end

