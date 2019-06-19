def sort(input)
  # insertion sort
  # https://en.wikipedia.org/wiki/Insertion_sort
  output = Marshal.load(Marshal.dump(input))
  i = 1
  while i < output.length
    j = i
    while j > 0 && output[j - 1] > output[j]
      swap(output, j, j - 1)
      j -= 1
    end
    i += 1
  end
  output
end

def swap(array, index_1, index_2)
  tmp = array[index_1]
  array[index_1] = array[index_2]
  array[index_2] = tmp
end
