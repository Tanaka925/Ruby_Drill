def binary_search(array, right, target)
  left = 0
  while left <= right
    center = (left + right) / 2
    if array[center] == target
      return center
    elsif array[center] < target
      left = center + 1
    else
      right = center - 1
    end
  end
  return -1 
end

array=[1,3,5,6,9,10,13,20,26,31]

puts "検索したい数字を入力してください"
target = gets.to_i
number_of_elements = array.length

result = binary_search(array, number_of_elements, target)

if result == -1
  puts "#{target}は配列内に存在しません"
else
  puts "#{target}は配列の#{result}番目に存在します "
end
# 解説
# 1〜14行目で中央の値を見て、検索したい値との大小関係を用いて、検索したい値が中央の値の右にあるか、左にあるかを判断して、片側には存在しないことを確かめながら検索を行う処理を行っています。13行目のreturn -1は何も当てはまるときがないときに、最終的な返り値になります。

# たとえば、targetとして31を入力した場合を考えてみましょう。そうすると2〜12行目で以下のように処理が進みます。

#1回目のループ
left=0
right=10
center=5
array[center]=10

#2回目のループ
left=6
right=10
center=8
array[center]=26

#3回目のループ
left=9
right=10
center=9
array[center]=31
そして6行目のreturn centerによって返り値が9となり、24〜28行目の処理で31は配列の9番目に存在しますと出力されます。