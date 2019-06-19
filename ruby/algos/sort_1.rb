def sort(input)
  output = []
  i = 0
  while i < input.length
    j = 0
    while j <= output.length
      if j == output.length
        output << input[i]
        break
      end
      if input[i] < output[j]
        output.insert(j, input[i])
        break
      end
      j += 1
    end
    i += 1
  end

  output
end
