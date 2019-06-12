require_relative './block_timer'
require_relative './find_duplicates_1'
require 'csv'

increment = 500
max = 10_000
iterations = 1000
output_file = "find_duplicates.csv"

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
  array = Array.new(n) { rand(n) }
  t = block_timer(iterations) { find_duplicates(array) }
  puts "t = #{t}"
  rows.push([n, iterations, t])
end

CSV.open(output_file, "wb") do |csv|
  csv << header
  rows.each { |row| csv << row }
end
