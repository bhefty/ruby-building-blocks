def stock_picker(arr)
  arr_sorted = arr.sort

  min_max = [nil, nil]

  while min_max == [nil, nil] do
    if arr.index(arr_sorted[0]) < arr.index(arr_sorted[arr_sorted.length - 1])
      min_max[0] = arr[arr.index(arr_sorted[0])]
      min_max[1] = arr[arr.index(arr_sorted[arr_sorted.length - 1])]
    else
      arr_sorted.pop
      arr_sorted.shift
    end
  end

  day_to_buy = arr.index(min_max[0])
  day_to_sell = arr.index(min_max[1])

  return "Buy on day #{day_to_buy}, and sell on #{day_to_sell}.\n
  This will give a profit of $#{min_max[1]} - $#{min_max[0]} = $#{min_max[1] - min_max[0]}."

end

puts stock_picker([17,3,6,9,15,8,6,1,10])
