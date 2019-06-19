def fibonacci(n)
  return [] if n == 0
  return [0] if n == 1
  return [0, 1] if n == 2

  output = [0, 1]
  (n - 2).times do
    last_number = output[-1]
    last_but_one_number = output[-2]
    new_number = last_number + last_but_one_number
    output << new_number
  end

  output
end

if __FILE__ == $0
  require_relative '../lib/timing_stuffs'

  algo_input = Proc.new { |n| n }
  algo = Proc.new { |input| fibonacci(input) }

  timings = get_timings(max: 100_000,
                        iterations: 10,
                        input_to_algo: algo_input,
                        algo: algo)

  save_as_csv(timings)
end
