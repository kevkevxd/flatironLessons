def join_nested_strings(grid)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
string_results = []
total = 0
row_index = 0
while row_index < grid.count do
  element_index = 0
  sorted_string = ""
  while element_index < grid[row_index].count do
    if grid[row_index][element_index].is_a?
  string_results << grid[row_index][element_index]
  end
    element_index += 1
  end
  row_index += 1
end
string_results
end
