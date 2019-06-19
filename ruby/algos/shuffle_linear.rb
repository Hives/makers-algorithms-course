def shuffle(input)
  input_tmp = Marshal.load(Marshal.dump(input))
  output = []
  loop do
    i = rand input_tmp.length
    output << input[i]
    input_tmp[i] = input_tmp.pop
    break if input_tmp.length == 1
  end
  output
end
