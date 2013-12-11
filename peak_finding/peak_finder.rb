def find_1d_peak(list)
  left = 0
  right = list.length - 1
  while left <= right
    middle = (left + right) / 2
    if middle > 0 and list[middle - 1] > list[middle]
      right = middle - 1
    elsif middle < list.length - 1 and list[middle + 1] > list[middle]
      left = middle + 1
    else
      return list[middle]
    end
  end
end