# 模範解答

def lone_sum(ary)
  # 配列から、重複しない要素のみ取り出す
  uniq_nums = []
  ary.each do |num|
    count = 0
    ary.each do |i|
      if num == i
        count += 1
      end
    end
    if count < 2
      uniq_nums << num
    end
  end

  # uniq_nums配列内の合計
  sum = 0
  uniq_nums.each do |unique_num|
    sum += unique_num
  end
  puts sum
end

# 呼び出し例
lone_sum([1, 2, 3])

# 解説
# 3〜14行目で重複しない値のみ取り出す処理を、17〜20行目で重複しない値のみになった配列内の合計を求める処理を行っています。以下具体的に見てみましょう。

# たとえば、lone_sum([3, 2, 3])でメソッドを呼び出した場合を考えてみましょう。

# この場合、4行目で最初にnum=3となります。その後6行目でi=3, 2, 3となり、それぞれに対してnum=iとなったとき、つまり重複したときにcountが増えるようになっています。
# そして、11行目では重複した値が1つのときだけ、uniq_nums配列に値を追加しています。num=3のときはcount=2となるので、uniq_nums配列に値は追加されません。
# これを後2回繰り返した結果、uniq_nums配列には2だけが追加されます。

# そして17行目以下でuniq_nums配列内の合計を求めます。
# この場合はsum = sum + 2、つまりsum = 0 + 2となります。
# その結果、合計は2と出力されます。