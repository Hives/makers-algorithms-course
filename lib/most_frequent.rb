def most_frequent(input)
  item_count = {}
  input.each do |item|
    if item_count.has_key? item
      item_count[item] += 1
    else
      item_count[item] = 1
    end
  end
  item_count.keys.sort { |a, b| item_count[b] <=> item_count[a] }.first
end

