def reverse(input)
  reversed_input = []
  input.each_with_index do |thing, i|
    reversed_input[input.length - i - 1] = thing
  end
  reversed_input
end

if __FILE__ == $0
  require_relative '../lib/timing_stuffs'

  output_file = File.basename(__FILE__, '.rb') + '.csv'
  input = Proc.new { |n| [0] * n }
  timed_block = Proc.new { |input| reverse(input) }

  timings = get_timings(max: 10_000,
                        iterations: 1000,
                        input_to_algo: input,
                        algo: timed_block)

  save_as_csv(timings)
end
