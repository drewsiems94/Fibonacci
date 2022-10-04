def fibs(num)
  arr = Array.new(num)
  if num == 1
    arr = [0]
  elsif num == 2
    arr = [0, 1]
  else
    arr[0] = 0
    arr[1] = 1
    i = 2
    while i < arr.length
      arr[i] = arr[i-1] + arr[i-2]
      i += 1
    end
  end
  arr
end

def fibs_rec(n, arr = [0, 1])
  return arr if n <= 2
  arr << arr[-1] + arr[-2]
  fibs_rec(n - 1, arr)
end

print fibs_rec(8)