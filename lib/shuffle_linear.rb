def shuffle(input)
  output = []
  loop do
    i = rand input.length
    output << input[i]
    input[i] = input.pop
    break if input.length == 1
  end
  output
end
