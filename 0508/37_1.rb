def lone_sum(ary)
  a, b, c = ary  # 配列の要素を a, b, c に割り当てる
  if a == b
    puts c
  elsif a == c
    puts b
  elsif b == c
    puts a
  else
    puts a + b + c
  end
end

# 呼び出し例
lone_sum([1, 2, 3])