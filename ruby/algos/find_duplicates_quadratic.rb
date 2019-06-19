def find_duplicates(input)
  items = []
  duplicates = {}
  input.each do |item|
    if !items.include? item
      items.push item
    else
      duplicates[item] = true
    end
  end
  duplicates.keys
end
