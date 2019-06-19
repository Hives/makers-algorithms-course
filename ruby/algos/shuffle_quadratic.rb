def shuffle(input)
  # duplicate_input = Marshal.load(Marshal.dump(input))
  output = [false] * input.length
  until input.empty? do
    i = rand input.length
    output << input[i]
    input.delete_at(i)
  end
  output
end
