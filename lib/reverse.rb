def reverse(input)
  reversed_input = []
  i = input.length - 1
  loop do
    break if i < 0

    reversed_input.push(input[i])
    i -= 1
  end
  reversed_input
end
