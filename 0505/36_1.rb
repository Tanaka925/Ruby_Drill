# 回答

def withdraw(balance, amount)
  fee = 110    # 手数料
  total_withdraw = amount + fee  # 引き落とし額と手数料の合計
  if balance >= total_withdraw 
    balance -= total_withdraw
    puts "#{amount}円引き落としました。残高は#{balance}円です"
  else
    puts "残高不足です"
  end
end

balance = 100000    # 残高
puts "いくら引き落としますか？（手数料110円かかります）"
money = gets.to_i
withdraw(balance, money)


# 模範回答
def withdraw(balance, amount)
  fee = 110
  if balance >= (amount + fee)
    balance -= (amount + fee)
    puts "#{amount}円引き落としました。残高は#{balance}円です"
  else
    puts "残高不足です"
  end
end

balance = 100000
puts "いくら引き落としますか？（手数料110円かかります）"
money = gets.to_i
withdraw(balance, money)

# 解説
# 13行目で入力した金額（amount）と手数料110（fee）の合計が100000以上か否かを3行目〜8行目で条件づけをしています。
# 100000以上の場合は、balance -= (amount + fee)、
# つまりbalance = balance - (amount + fee)が処理され、最終的な返り値が出力されます。