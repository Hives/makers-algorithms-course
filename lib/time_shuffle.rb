require_relative './block_timer'
require_relative './shuffle'
require 'csv'

increment = 500
max = 10_000
iterations = 100
output_file = "shuffle.csv"

if File.file?(output_file)
  puts "Output file '#{output_file}' already exists. Continue anyway? [y/N]"
  exit unless gets.chomp.downcase == "y"
end

header = [:n, :iterations, :time]
rows = []
n = 0

loop do
  n += increment
  break if n > max

  puts "n = #{n}"
  array = [0] * n
  t = block_timer(iterations) { shuffle(array) }
  puts "t = #{t}"
  rows.push([n, iterations, t])
end

CSV.open(output_file, "wb") do |csv|
  csv << header
  rows.each { |row| csv << row }
end
