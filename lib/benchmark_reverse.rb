require_relative './benchmark'
require_relative './reverse'
require 'csv'

increment = 500
max = 10_000
iterations = 1_000
output_file = "reverse.csv"

if File.file?(output_file)
  puts "Output file '#{output_file}' already exists. Continue anyway? [y/N]"
  exit unless gets.chomp.downcase == "y"
end

header = [:"length of array", :iterations, :time]
rows = []
n = 0

loop do
  n += increment
  break if n > max

  puts "n = #{n}"
  array = [0] * n

  t = benchmark do
    iterations.times { reverse(array) }
  end

  puts "t = #{t}"
  rows.push([n, iterations, t])
end

CSV.open(output_file, "wb") do |csv|
  csv << header
  rows.each { |row| csv << row }
end
