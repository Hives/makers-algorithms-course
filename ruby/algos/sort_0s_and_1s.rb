def sort_0s_and_1s(input)
  output = []
  index_0 = 0
  index_1 = input.length - 1
  input.each do |thing|
    if thing == 0
      output[index_0] = 0
      index_0 += 1
    end
    if thing == 1
      output[index_1] = 1
      index_1 -= 1
    end
  end
  output
end
