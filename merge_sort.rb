def merge_sort(arr)
  if arr.length == 1
    return [arr[0]]
  elsif arr.length == 2
    return merge([arr[0]],[arr[1]])
  else
    mid = arr.length / 2
    left = merge_sort(arr[0...mid])
    right = merge_sort(arr[mid...arr.length])
    puts "left: [#{left.join(",")}],right: [#{right.join(",")}]"
    return merge(left,right)
  end
end

def merge(left,right)
  l = 0
  r = 0
  targ_len = left.length + right.length
  new = []
  until new.length >= targ_len
    if l == left.length
      new += right[r...right.length]
    elsif r == right.length
      new += left[l...left.length]
    elsif left[l] < right[r]
      new.push(left[l])
      l += 1
    elsif left[l] >= right[r]
      new.push(right[r])
      r += 1
    end
  end
  return new
end
