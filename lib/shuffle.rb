def shuffle(input)
  duplicate_input = Marshal.load(Marshal.dump(input))
  output = []
  while duplicate_input.length > 0
    output.push(duplicate_input.delete_at(rand(duplicate_input.length)))
  end
  output
end
