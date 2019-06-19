def has_duplicates(arr)
  item_hash = {}
  for i in 0..(arr.length - 1) do
    return true unless item_hash[arr[i]].nil?
    item_hash[arr[i]] = 1
  end
  return false
end
