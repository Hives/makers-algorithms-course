require 'csv'

def get_timings(max: 10_000, iterations: 100, input_to_algo:, algo:)
  steps = 20
  n = 0
  increment = max / steps
  rows = [[:n, :iterations, :time]]
  
  loop do
    n += increment
    break if n > max

    puts "n = #{n}"
    input = input_to_algo.call(n)

    # warm up
    10.times { algo.call(input) }

    start_time = Time.now
    iterations.times { algo.call(input) }
    end_time = Time.now
    t = end_time - start_time

    puts "t = #{t}"
    rows.push([n, iterations, t])
  end

  rows
end

def save_as_csv(rows)
  output_file = File.basename($0, '.rb') + '.csv'

  CSV.open(output_file, "wb") do |csv|
    rows.each { |row| csv << row }
  end
end
