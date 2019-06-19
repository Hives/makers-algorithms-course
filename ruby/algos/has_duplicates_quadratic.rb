def has_duplicates(arr)
  for i in 0..(arr.length - 1) do
    for j in (i + 1)..(arr.length - 1) do
      return true if arr[i] == arr[j]
    end
  end
  return false
end
