def find_min_in_nested_arrays(src)
  outer_results = []
  row_index = 0
  while row_index < src.count do
    element_index = 0
    min_temp = 25
    while element_index < src[row_index].count do
      if src[row_index][element_index] < min_temp
        min_temp = src[row_index][element_index]
      end
      element_index += 1
    end
    outer_results << min_temp
    row_index += 1
  end
outer_results
end
