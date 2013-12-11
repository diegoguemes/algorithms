def find_1d_peak(a)
  left = 0
  right = a.length - 1
  while left <= right
    middle = (left + right) / 2
    if middle > 0 and a[middle - 1] > a[middle]
      right = middle - 1
    elsif middle < a.length - 1 and a[middle + 1] > a[middle]
      left = middle + 1
    else
      return a[middle]
    end
  end
end