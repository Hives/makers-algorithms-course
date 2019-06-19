def fibonacci(n)
  return [] if n == 0
  return [0] if n == 1
  return [0, 1] if n == 2

  output = [nil] * n
  output[0] = 0
  output[1] = 1

  (2..(n-1)).each do |i|
    last_number = output[i - 1]
    last_but_one_number = output[i - 2]
    new_number = last_number + last_but_one_number
    output[i] = new_number
  end

  output
end

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
