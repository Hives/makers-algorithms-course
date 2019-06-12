def find_duplicates(input)
  item_count = {}
  input.each do |item|
    if item_count.has_key? item
      item_count[item] += 1
    else
      item_count[item] = 1
    end
  end
  item_count.keys.select { |key| item_count[key] >= 2 }
end
